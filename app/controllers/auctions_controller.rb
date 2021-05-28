class AuctionsController < ApplicationController
  def new
    @auction = Auction.new
  end
end
