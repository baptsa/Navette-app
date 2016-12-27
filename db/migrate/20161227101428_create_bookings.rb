class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.references :departure, foreign_key: true
      t.references :arrival, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :seat
      t.string :luggage
      t.boolean :statut

      t.timestamps
    end
  end
end
