class Course < ApplicationRecord
  belongs_to :user
  belongs_to :camp
  has_many :syllabi
  has_many :course_relationships
  has_many :users, through: :course_relationships
end
