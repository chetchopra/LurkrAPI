class Subreddit < ApplicationRecord
  has_many :subscriptions


  # This method returns post data from a specific subreddit in JSON format
  def self.getSubredditPosts(subredditName)
    # Hits provided subreddit url and parses the response
    # TO-DO: Perhaps add "new" to path to ensure each call fetches newest posts
    parsedResponse = JSON.parse(RestClient.get("http://reddit.com/r/#{subredditName}.json"))

    # Traverses to the children (posts) in the response JSON
    subredditPosts = parsedResponse["data"]["children"]

    # TO-DO: Add in code to capture and handle errors 

    return self.extractPosts(subredditPosts)


  end

  def self.addSubreddit(subredditParams) 
    # TO-DO: Handle banned subreddit response and no response

    parsedResponse = JSON.parse(RestClient.get("http://reddit.com/r/#{subredditParams["name"]}.json"))
    if parsedResponse["data"]["children"].size == 0
      return nil
    else 
      newSubreddit = Subreddit.find_by(name: subredditParams["name"])
      if newSubreddit
        oldSubscription = Subscription.find_by(subreddit_id: newSubreddit.id, user_id: subredditParams["user_id"])
        if !oldSubscription
          Subscription.addSubscription(newSubreddit.id, subredditParams["user_id"])   
        else 
          return "Issue"
        end   
      else 
        newSubreddit = Subreddit.create(name: subredditParams["name"])
        Subscription.addSubscription(newSubreddit.id, subredditParams["user_id"])
      end
      subredditPosts = parsedResponse["data"]["children"]
      return subredditParams["name"]
    end
  end


  def self.extractPosts(subredditPosts)
    posts = []
    subredditPosts.each do |post|
      posts << {title: post["data"]["title"],
                img: post["data"]["thumbnail"],
                url: post["data"]["url"],
                num_comments: post["data"]["num_comments"],
                author: post["data"]["author"],
                self_text: post["data"]["selftext"],
                up_votes: post["data"]["ups"],
                permalink: post["data"]["permalink"],
                
        }
    end
    return posts
  end

end
