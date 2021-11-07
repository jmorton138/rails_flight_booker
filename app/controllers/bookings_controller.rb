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
       @flight = Flight.where(id: params[:flight_id])[0]
       @booking = Booking.new(booking_params)
       @flight.bookings << @booking
       respond_to do |format|
            if @booking.save
                @passengers = @booking.passengers.each do |passenger|
                    PassengerMailer.with(passenger: passenger).thank_you_email.deliver_now
                end
                format.html { redirect_to booking_path(@booking.id) }
            else
                flash.alert ="error"
                render :new
            end
        end

        
    end

    def show
        @booking = Booking.find(params[:id])
    end

    private

    def booking_params
        params.require(:booking).permit(:flight_id, :passengers_attributes => [ :id, :name, :email ])
    end
end
