class Task < ApplicationRecord
  belongs_to :post
  has_many :likes
end
