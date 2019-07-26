class SubredditsController < ApplicationController

  def show 
    # TO_DO: consider getting the name from params to a before action
    subredditName = params[:name]
    subredditPosts = Subreddit.getSubredditPosts(subredditName)
    render json: subredditPosts  
  end 

  
end
