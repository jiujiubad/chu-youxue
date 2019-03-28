class MeetupGroupsController < ApplicationController
  def index
    @camp = Camp.last
    @meetup_groups = @camp.meetup_groups
  end

  def show
    @meetup_group = MeetupGroup.find(params[:id])
  end

  def new
  end
end
