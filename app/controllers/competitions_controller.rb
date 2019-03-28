class CompetitionsController < ApplicationController
  def index
    @camp = Camp.last
    @competitions = @camp.competitions
  end

  def show
    @competition = Competition.find(params[:id])
  end
end
