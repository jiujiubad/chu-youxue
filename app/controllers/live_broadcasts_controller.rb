class LiveBroadcastsController < ApplicationController
  def index
    @live_broadcasts = current_camp.live_broadcasts
  end
end
