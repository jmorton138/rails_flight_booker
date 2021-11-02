class AddPassengersToFlight < ActiveRecord::Migration[6.1]
  def change
    add_reference :flights, :passenger, foreign_key: true
  end
end
