class Airport < ApplicationRecord
  has_many :departing_flights, class_name: 'Flight', foreign_key: 'origin_id'
  has_many :arriving_flights, class_name: 'Flight', foreign_key: 'destination_id'
end
