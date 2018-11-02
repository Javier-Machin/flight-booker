class Flight < ApplicationRecord
  has_many :bookings
  has_many :passengers, through: :bookings
  belongs_to :origin, class_name: 'Airport', foreign_key: 'origin_id'
  belongs_to :destination, class_name: 'Airport', foreign_key: 'destination_id'
end
