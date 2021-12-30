sfo = Airport.new(airport_code: "SFO")
sfo.save
lax = Airport.new(airport_code: "LAX")
lax.save
lho = Airport.new(airport_code: "LHO")
lho.save
lgw = Airport.new(airport_code: "LGW")
lgw.save
jfk = Airport.new(airport_code: "JFK")
jfk.save
ord = Airport.new(airport_code: "ORD")
ord.save
den = Airport.new(airport_code: "DEN")
den.save






# f1 = Flight.new(departure_time: '2021-12-20 12:05:00', duration: 7200)
# f1.departure_airport = sfo
# f1.arrival_airport = lax
# f1.save

# f2 = Flight.new(departure_time: '2021-12-21 14:05:00', duration: 35200)
# f2.departure_airport = sfo
# f2.arrival_airport = lho
# f2.save

# f3 = Flight.new(departure_time: '2021-12-22 16:05:00', duration: 35200)
# f3.departure_airport = lax
# f3.arrival_airport = lgw
# f3.save

# f4 = Flight.new(departure_time: '2021-12-20 10:05:00', duration: 7200)
# f4.departure_airport = sfo
# f4.arrival_airport = lax
# f4.save
Airport.all.each do |a1|
    Airport.all.each do |a2|
        flight = Flight.new(departure_time: '2021-12-21 14:05:00', duration: rand(7200...100000))
        unless a1.id == a2.id
            flight.departure_airport = a1
            flight.arrival_airport = a2
            flight.save
        end
    end
end

Airport.all.each do |a1|
    Airport.all.each do |a2|
        flight = Flight.new(departure_time: '2021-12-21 17:00:00', duration: rand(7200...100000))
        unless a1.id == a2.id
            flight.departure_airport = a1
            flight.arrival_airport = a2
            flight.save
        end
    end
end

Airport.all.each do |a1|
    Airport.all.each do |a2|
        flight = Flight.new(departure_time: '2021-12-21 10:10:00', duration: rand(7200...100000))
        unless a1.id == a2.id
            flight.departure_airport = a1
            flight.arrival_airport = a2
            flight.save
        end
    end
end

Airport.all.each do |a1|
    Airport.all.each do |a2|
        flight = Flight.new(departure_time: '2021-12-21 06:05:00', duration: rand(7200...100000))
        unless a1.id == a2.id
            flight.departure_airport = a1
            flight.arrival_airport = a2
            flight.save
        end
    end
end

Airport.all.each do |a1|
    Airport.all.each do |a2|
        flight = Flight.new(departure_time: '2021-12-20 14:05:00', duration: rand(7200...100000))
        unless a1.id == a2.id
            flight.departure_airport = a1
            flight.arrival_airport = a2
            flight.save
        end
    end
end

Airport.all.each do |a1|
    Airport.all.each do |a2|
        flight = Flight.new(departure_time: '2021-12-20 17:00:00', duration: rand(7200...100000))
        unless a1.id == a2.id
            flight.departure_airport = a1
            flight.arrival_airport = a2
            flight.save
        end
    end
end

Airport.all.each do |a1|
    Airport.all.each do |a2|
        flight = Flight.new(departure_time: '2021-12-20 10:10:00', duration: rand(7200...100000))
        unless a1.id == a2.id
            flight.departure_airport = a1
            flight.arrival_airport = a2
            flight.save
        end
    end
end


Airport.all.each do |a1|
    Airport.all.each do |a2|
        flight = Flight.new(departure_time: '2021-12-20 06:05:00', duration: rand(7200...100000))
        unless a1.id == a2.id
            flight.departure_airport = a1
            flight.arrival_airport = a2
            flight.save
        end
    end
end


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# YYYY-MM-DD HH:MM:SS

Airport.all.each do |a1|
    Airport.all.each do |a2|
        flight = Flight.new(departure_time: '2021-12-22 14:05:00', duration: rand(7200...100000))
        unless a1.id == a2.id
            flight.departure_airport = a1
            flight.arrival_airport = a2
            flight.save
        end
    end
end

Airport.all.each do |a1|
    Airport.all.each do |a2|
        flight = Flight.new(departure_time: '2021-12-22 17:00:00', duration: rand(7200...100000))
        unless a1.id == a2.id
            flight.departure_airport = a1
            flight.arrival_airport = a2
            flight.save
        end
    end
end

Airport.all.each do |a1|
    Airport.all.each do |a2|
        flight = Flight.new(departure_time: '2021-12-22 10:10:00', duration: rand(7200...100000))
        unless a1.id == a2.id
            flight.departure_airport = a1
            flight.arrival_airport = a2
            flight.save
        end
    end
end


