class SettingsController < ApplicationController

  def update 
    settings = Setting.find_by(id: params[:id])
    newCol = params[:columns].to_i()
    settings.update(num_cols: newCol)
    # byebug
    settings = Setting.find_by(id: params[:id])
    render json: settings
  end


end
