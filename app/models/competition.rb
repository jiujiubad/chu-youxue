class Competition < ApplicationRecord
  belongs_to :camp
  has_many :works
  has_many :comments
  has_many :votes
end
