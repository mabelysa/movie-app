class Movie < ApplicationRecord
  validates :year, numericality: { only_integer: true }
  validates :title, :plot, :director, presence: true
  validates :title, :plot, :director, uniqueness: true
end
