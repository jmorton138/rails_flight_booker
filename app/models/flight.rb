class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"

  def departure_time_formatted
    departure_time.strftime("%m/%d/%Y")
  end
end
