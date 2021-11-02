class FlightsController < ApplicationController

    def index
        @flight = Flight.new
        @airport_options = Airport.all.map { |a| [a.airport_code, a.id] }
        @date_options = Flight.all.map { |d| [d.departure_time_formatted, d.departure_time_formatted_int] }
        @passenger_options = 4.times.map { |i| [i + 1, i + 1] }
        @departure_airport = Airport.where(id: :airport_code)

        @flights = Flight.search(params)
    end


    private

    def search_params
        params.require(:flight).permit(:departure_code, :arrival_code, :num_tickets, :date)
    end
end
