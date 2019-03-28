class LiveBroadcastsController < ApplicationController
  def index
    @camp = Camp.last
    @live_broadcasts = @camp.live_broadcasts
  end
end
