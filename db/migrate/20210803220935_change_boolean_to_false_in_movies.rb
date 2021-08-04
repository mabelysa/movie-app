class ChangeBooleanToFalseInMovies < ActiveRecord::Migration[6.1]
  def change
    change_column :movies, :english, :boolean, default: false
  end
end
