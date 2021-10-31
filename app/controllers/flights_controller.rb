class FlightsController < ApplicationController

    def index
        @flight = Flight.new
        @airport_options = Airport.all.map { |a| [a.airport_code, a.id] }
        @date_options = Flight.all.map { |d| [d.departure_time_formatted, d.id] }
        @passenger_options = 4.times.map { |i| [i + 1, i + 1] }
    #     @departure_airport_options = Flight.all.map{ |a| [a.departure_airport.airport_code, a.departure_airport_id] }
    #     @arrival_airport_options = Flight.all.map{ |a| [a.arrival_airport.airport_code, a.arrival_airport_id] }
    end

    def search
    end
end
