class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"

  has_many :passengers
  has_many :bookings

  def departure_time_formatted
    departure_time.strftime("%m/%d/%Y")
  end

  def departure_time_formatted_int
    departure_time.strftime("%Y%m%d")
  end

  def departure_time_format_time
    departure_time.strftime("%I:%M %p")
  end 

  def format_duration
    "%dh %02dm" % [duration / 3600, duration / 60 % 60]
  end
  
  def self.search(params)
    flights = Flight.where(departure_airport_id: params[:departure_code], arrival_airport_id: params[:arrival_code])
    return flights.map do |flight|
      flight if flight.departure_time_formatted_int == params[:date]
    end

  end
end
