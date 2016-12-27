class AddCoordinatesToDepartures < ActiveRecord::Migration[5.0]
  def change
    add_column :departures, :latitude, :float
    add_column :departures, :longitude, :float
  end
end
