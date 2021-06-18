class MoviesController < ApplicationController
  def movies_all
    movie = Movie.all
    render json
  end
end
