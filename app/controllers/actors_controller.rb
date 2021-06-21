class ActorsController < ApplicationController
  def robin_williams
    actor = Actor.find(1)
    render json: actor.as_json
  end

  def matthew_lawrence
    actor = Actor.find(2)
    render json: actor.as_json
  end

  def query_params
    input = params["first_name"]
    actor = Actor.find_by(first_name: input)
    render json: { first_name: actor }
  end

  def segment_params
    input = params["last_name"]
    actor = Actor.find_by(last_name: input)
    render json: { last_name: actor }
  end

  def body_params
    input = params["first_name"]
    actor = Actor.find_by(first_name: input)
    render json: { first_name: actor}
  end
end
