class Course < ApplicationRecord
  belongs_to :camp
  has_many :syllabuses
end
