class MeetupGroupsController < ApplicationController
  def index
    @meetup_groups = current_camp.meetup_groups
  end

  def show
    @meetup_group = MeetupGroup.find(params[:id])
  end

  def new
  end
end
