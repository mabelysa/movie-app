Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "/actorone_path", controller: "actors", action: "robin_williams"

  # get "/actortwo_path", controller: "actors", action: "matthew_lawrence"

  # get "/moviesall_path" => "movies#movies_all"

  # get "moviesone_path" => "movies#movies_one"

  # get "moviestwo_path" => "movies#movies_two"

  # get "/actor_query" => "actors#query_params"

  # get "/actor_segment/:last_name" => "actors#segment_params"

  # post "/actor_body" => "actors#body_params"

  #=========Actors - RESTful actions ================
  get "/actor" => "actors#index"

  post "/actor" => "actors#create"

  get "/actor/:id" => "actors#show"

  patch "/actor/:id" => "actors#update"

  delete "/actor/:id" => "actors#destroy"
  #========Movies - RESTful actions================

  get "/movies" => "movies#index"

  post "/movies" => "movies#create"

  get "/movies/:id" => "movies#show"

  patch "movies/:id" => "movies#update"

  delete "movies/:id" => "movies#destroy"

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  post "/movie_genres" => "movie_genres#create"

  get "/movie_genres" => "movie_genres#index"
end
