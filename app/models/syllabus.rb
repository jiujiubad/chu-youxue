class Syllabus < ApplicationRecord
  belongs_to :course
  has_many :posts
end
