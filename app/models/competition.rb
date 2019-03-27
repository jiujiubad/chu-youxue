class Competition < ApplicationRecord
  belongs_to :camp
  has_many :works
end
