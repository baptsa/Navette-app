class Booking < ApplicationRecord
  belongs_to :departure
  belongs_to :arrival
  belongs_to :user
end
