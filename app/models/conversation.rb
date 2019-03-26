class Conversation < ApplicationRecord
  belongs_to :camp
  has_many :replays
end
