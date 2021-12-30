class PassengerMailer < ApplicationMailer
    default from: 'jmorton138@gmail.com'

    def thank_you_email
        @passenger = params[:passenger]
        @url = 'http://example.com/'
        mail(to: @passenger.email, subject: 'Thank you!')


    end
end
