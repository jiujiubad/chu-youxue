class CoursesController < ApplicationController
  def index
    @camp = Camp.last
    @courses = @camp.courses
  end

  def show
    @course = Course.find(params[:id])
  end
end
