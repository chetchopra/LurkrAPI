class SubredditsController < ApplicationController

  def index



  end

  def show 
    subredditName = params[:id]
    subredditPosts = Subreddit.getSubredditPosts(subredditName)
    render json: subredditPosts  
  end 
end
