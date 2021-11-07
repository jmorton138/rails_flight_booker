class PassengerMailer < ApplicationMailer
    default from: 'notifications@example.com'

    def thank_you_email
        @passenger = params[:passenger]
        @url = 'http://example.com/'
        mail(to: @passenger.email, subject: 'Thank you!')
    end
end
