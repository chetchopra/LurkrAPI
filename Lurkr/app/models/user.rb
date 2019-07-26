class User < ApplicationRecord
  has_many :subscriptions
  has_many :favorites
  has_many :subreddits, through: :subscriptions
  has_one :setting


  def self.getUserInfo(userId)

    user = User.find_by(id: userId)

    return user.to_json(:include => {
      :subreddits => {:only => [:name]}
    }, :except => [:updated_at, :created_at])

  end
  
end
