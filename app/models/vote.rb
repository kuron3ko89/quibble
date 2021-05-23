class Vote < ApplicationRecord
  belongs_to :bid
  belongs_to :auction_member
end
