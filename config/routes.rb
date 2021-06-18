Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/actorone_path", controller: "actors", action: "robin_williams"

  get "/actortwo_path", controller: "actors", action: "matthew_lawrence"

  get "/moviesall_path" => "movies#movies_all"

  get "moviesone_path" => "movies#movies_one"

  get "movies" => "movies#movies_two"

  get "movies" => "movies#movies_three"

  get "movies" => "movies#movies_four"

  get "movies" => "movies#movies_five"
end
