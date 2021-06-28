class MoviesController < ApplicationController
  # def movies_all
  #   movie = Movie.all
  #   render json: movie.as_json
  # end

  # def movies_one
  #   movie = Movie.find(1)
  #   render json: movie.as_json
  # end

  # def movies_two
  #   movie = Movie.find_by(title: "Hocus Pocus")
  #   render json: movie.as_json
  # end

  def index
    movies = Movie.where(english: true)
    render json: movies.as_json
  end

  def create
    movies = Movie.new(
      title: params["title"],
      year: params["year"],
      plot: params["plot"],
      director: params["director"],
      english: params["english"],
    )
    if movies.save
      render json: movies.as_json
    else
      render json: { errors: movies.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    movies_id = params[:id]
    movies = Movie.find(movies_id)
    render json: movies.as_json
  end

  def update
    movies_id = params[:id]
    movies = Movie.find_by(id: movies_id)
    movies.title = params["title"] || movies.title
    movies.year = params["year"] || movies.year
    movies.plot = params["plot"] || movies.plot
    movies.director = params["director"] || movies.director
    movies.english = params["english"] || movies.english
    if movies.save
      render json: movies.as_json
    else
      render json: { errors: movies.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    movies_id = params[:id]
    movies = Movie.find_by(id: movies_id)
    movies.destroy
    render json: { message: "Your movie is no more!" }
  end
end
