class Camp < ApplicationRecord
  has_many :user_campships
  has_many :users, through: :user_campships
  has_many :courses
  has_many :competitions
  has_many :live_broadcasts
  has_many :conversations
  has_many :meetup_groups
end
