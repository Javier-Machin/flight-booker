# Create Airports

Airport.create(name: "NYC")
Airport.create(name: "LA")
Airport.create(name: "Madrid")
Airport.create(name: "Barcelona")
Airport.create(name: "Glasgow")
Airport.create(name: "Stuttgart")

# Create Flights

Flight.create(origin: Airport.first, destination: Airport.second, 
              departure: "2020-05-25 16:00", duration: 300)

Flight.create(origin: Airport.first, destination: Airport.second, 
              departure: "2020-06-25 16:00", duration: 300)

Flight.create(origin: Airport.first, destination: Airport.second, 
              departure: "2020-07-25 16:00", duration: 300)

Flight.create(origin: Airport.third, destination: Airport.fourth, 
              departure: "2020-05-25 16:00", duration: 300)

Flight.create(origin: Airport.third, destination: Airport.fourth, 
              departure: "2020-06-25 16:00", duration: 300)

Flight.create(origin: Airport.third, destination: Airport.fourth, 
              departure: "2020-07-25 16:00", duration: 300)

Flight.create(origin: Airport.find(5), destination: Airport.find(6), 
              departure: "2020-05-25 16:00", duration: 300)

Flight.create(origin: Airport.find(5), destination: Airport.find(6), 
              departure: "2020-06-25 16:00", duration: 300)

Flight.create(origin: Airport.find(5), destination: Airport.find(6), 
              departure: "2020-07-25 16:00", duration: 300)