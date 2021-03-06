class ActorsController < ApplicationController
  # def robin_williams
  #   actor = Actor.find(1)
  #   render json: actor.as_json
  # end

  # def matthew_lawrence
  #   actor = Actor.find(2)
  #   render json: actor.as_json
  # end

  # def query_params
  #   input = params["first_name"]
  #   actor = Actor.find_by(first_name: input)
  #   render json: { first_name: actor }
  # end

  # def segment_params
  #   input = params["last_name"]
  #   actor = Actor.find_by(last_name: input)
  #   render json: { last_name: actor }
  # end

  # def body_params
  #   input = params["first_name"]
  #   actor = Actor.find_by(first_name: input)
  #   render json: { first_name: actor}
  # end
  before_action :authenticate_admin, except: [:index, :show]

  def index
    if current_user
      actors = Actor.all.order(age: :desc)
      render json: actors
      # .as_json
    else
      render json: []
    end
  end

  def create
    actors = Actor.new(
      first_name: params["first_name"],
      last_name: params["last_name"],
      known_for: params["known_for"],
      gender: params["gender"],
      age: params["age"],
      views: params["views"],
      movie_id: params["movie_id"],
    )
    if actors.save
      render json: actors
      #as_json
    else
      render json: { errors: actors.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    actors_id = params[:id]
    actors = Actor.find(actors_id)
    render json: actors
    #as_json
  end

  def update
    actors_id = params[:id]
    actors = Actor.find_by(id: actors_id)
    actors.first_name = params["first_name"] || actors.first_name
    actors.last_name = params["last_name"] || actors.last_name
    actors.known_for = params["known_for"] || actors.known_for
    actors.gender = params["gender"] || actors.gender
    actors.age = params["age"] || actors.age
    actors.save
    actors.views = params["views"] || actors.views
    actors.movie_id = params["movie_id"] || actors.movie_id
    if actors.save
      render json: actors.as_json
    else
      render json: { errors: actors.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    actors_id = params[:id]
    actors = Actor.find_by(id: actors_id)
    actors.destroy
    render json: { message: "Your contact is no more!" }
  end
end
