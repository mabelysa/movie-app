class AddViewsToActors < ActiveRecord::Migration[6.1]
  def change
    add_column :actors, :views, :integer
  end
end
