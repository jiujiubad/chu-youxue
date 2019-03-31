class CompetitionsController < ApplicationController
  def index
    @competitions = current_camp.competitions
  end

  def show
    @competition = Competition.find(params[:id])
  end
end
