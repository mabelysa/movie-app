class Movie < ApplicationRecord
  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres

  validates :year, numericality: { only_integer: true }
  validates :title, :plot, :director, presence: true
  validates :title, :plot, :director, uniqueness: true

  def genre_names
    genre_array = []
    index = 0
    while index < genres.length
      genre_array << genres[index][:name]
      index += 1
    end
    p genre_array
  end

  # def genre_names
  #   genres.map do |genre|
  #     genres.movie
  #   end
  # end
end
