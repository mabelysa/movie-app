class Actor < ApplicationRecord
  belongs_to :movie

  validates :first_name, length: { minimum: 2 }
  validates :last_name, length: { minimum: 2 }
  validates :known_for, presence: true
  validates :age, numericality: { only_integer: true, greater_than: 13 }

  def plot
    p movie[:plot]
  end
end
