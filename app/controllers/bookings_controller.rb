class BookingsController < ApplicationController

    def new
        @flight = Flight.where(id: params[:flight_id])[0]

        @params = params[:num_tickets]
        @booking = Booking.new
    end

    def create
    end

    def show
    end

    private

    def passenger_params
        params.require(:passenger).permit(:name, :email)
    end
end
