class AddCoordinatesToArrivals < ActiveRecord::Migration[5.0]
  def change
    add_column :arrivals, :latitude, :float
    add_column :arrivals, :longitude, :float
  end
end
