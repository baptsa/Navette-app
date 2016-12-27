class CreateArrivals < ActiveRecord::Migration[5.0]
  def change
    create_table :arrivals do |t|
      t.string :address

      t.timestamps
    end
  end
end
