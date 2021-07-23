class Movie < ApplicationRecord
  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres

  validates :year, numericality: { only_integer: true }
  validates :title, :plot, presence: true
  # :director
  validates :title, :plot, uniqueness: true
  # :director

  def genre_names
    genre_array = []
    index = 0
    while index < genres.length
      genre_array << genres[index][:name]
      index += 1
    end
    p genre_array
  end
end
