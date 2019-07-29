class Subscription < ApplicationRecord
  belongs_to :user
  belongs_to :subreddit


  def self.addSubscription(subredditId, userId)
    Subscription.create(subreddit_id: subredditId, user_id: userId);
  end

end
