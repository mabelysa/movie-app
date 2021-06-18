class ActorsController < ApplicationController
  def robin_williams
    actor = Actor.find(1)
    render json: actor.as_json
  end

  def matthew_lawrence
    actor = Actor.find(2)
    render json: actor.as_json
  end
end
