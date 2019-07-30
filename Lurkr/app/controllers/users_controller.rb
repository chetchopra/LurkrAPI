class UsersController < ApplicationController


  def show 
    # TO_DO: consider getting the name from params to a before action
    render json: User.getUserInfo(params[:id])
  end 

  def checkForUser
    # byebug
    user = User.find_by(username: params["username"])
    if user
      render json: user
    else 
      render json: {"message": "User does not exist"}
    end
  end


end
