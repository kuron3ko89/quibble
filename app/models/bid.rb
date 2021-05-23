class Bid < ApplicationRecord
  belongs_to :auction_member
  has_many :votes
end
