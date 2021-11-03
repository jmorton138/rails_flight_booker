class BookingsController < ApplicationController

    def new
        @flight = Flight.where(id: params[:flight_id])[0]

        @num_tickets = params[:num_tickets]
        @booking = Booking.new
        @passengers = @num_tickets.to_i.times.map do |p|
            @booking.passengers.build
        end
        @booking
    end

    def create
       # @flight = Flight.where(id: params[:flight_id])[0]
       # @booking = Booking.new(passenger_params)
        # if @booking.save?
        #     @flight.bookings << @booking
        #     redirect_to booking_path
        # else
        #     flash[:error] ="error"
        #     render :new
        # end

        
    end

    def show
    end

    private

    def passenger_params
        params.require(:booking).permit(:flight_id, :passenger => [ :name, :email ])
    end
end
