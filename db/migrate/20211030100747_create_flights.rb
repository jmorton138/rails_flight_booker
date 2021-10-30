class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.references :airport, foreign_key: true
      t.datetime :departure_time
      t.integer :duration

      t.timestamps
    end
  end
end
