class Camp < ApplicationRecord
  has_many :users
  has_many :courses
  has_many :competitions
  has_many :lives
  has_many :conversations
end
