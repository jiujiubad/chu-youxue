class Work < ApplicationRecord
  belongs_to :user
  belongs_to :competition
  has_many :votes
  has_many :work_relationships
  has_many :users, through: :work_relationships
  has_many :comments
end
