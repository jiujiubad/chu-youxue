class Post < ApplicationRecord
  belongs_to :syllabus
  has_many :tasks
end
