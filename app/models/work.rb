class Work < ApplicationRecord
  belongs_to :competition
  has_many :votes
  has_many :comments
end
