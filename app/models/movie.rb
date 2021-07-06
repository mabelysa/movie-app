class Movie < ApplicationRecord
  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres

  validates :year, numericality: { only_integer: true }
  validates :title, :plot, :director, presence: true
  validates :title, :plot, :director, uniqueness: true
end
