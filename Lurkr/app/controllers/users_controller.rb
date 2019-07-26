class UsersController < ApplicationController


  def show 
    # TO_DO: consider getting the name from params to a before action
    render json: User.getUserInfo(params[:id])
  end 


end
