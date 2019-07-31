class SubredditsController < ApplicationController

  def show 
    # TO_DO: consider getting the name from params to a before action
    subredditName = params[:name]
    subredditPosts = Subreddit.getSubredditPosts(subredditName)
    render json: subredditPosts  
  end 

  def create 
    subredditName = Subreddit.addSubreddit(subredditParams)
    render json: {"name": subredditName}
  end

  def showPost
    linkToPost = params["url"]
    post = Subreddit.getOneSubredditPost(linkToPost)
    render json: post
  end

  def destroy
    subreddit = Subreddit.find_by(name: subredditParams["name"])
    subscriptionToRemove = Subscription.find_by(subreddit_id: subreddit.id, user_id: subredditParams["user_id"])
    # byebug
    subscriptionToRemove.destroy()
    render json: {"message": "murdered"}
  end

  private 
  def subredditParams
    return params.require(:subreddit).permit(:name, :user_id)
  end

  
end
