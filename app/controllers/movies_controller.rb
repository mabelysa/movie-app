class MoviesController < ApplicationController
  def movies_all
    movie = Movie.all
    render json: movie.as_json
  end

  def movies_one
    movie = Movie.find(1)
    render json: movie.as_json
  end

  def movies_two
    movie = Movie.find_by(title: "Hocus Pocus")
    render json: movie.as_json
  end
end
