class AddAirportReferencesToFlights < ActiveRecord::Migration[6.1]
  def change
    add_reference :flights, :departure_airport, references: :airport, index: true
    add_reference :flights, :arrival_airport, references: :airport, index: true

    add_foreign_key :flights, :airports, column: :departure_airport_id
    add_foreign_key :flights, :airports, column: :arrival_airport_id
  end
end
