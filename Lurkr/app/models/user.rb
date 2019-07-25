class User < ApplicationRecord
  has_many :subscriptions
  has_many :favorites
  has_many :subreddits, through: :subscriptions
  has_one :setting
end
