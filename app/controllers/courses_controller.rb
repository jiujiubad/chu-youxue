class CoursesController < ApplicationController
  def index
    @camp = Camp.last
    @courses = @camp.courses
  end
end
