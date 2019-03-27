class Camp < ApplicationRecord
  has_many :camp_relationships
  has_many :users
  has_many :courses
  has_many :competitions
  has_many :lives
  has_many :conversations
  has_many :meetup_groups
end
