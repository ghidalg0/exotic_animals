class Animal < ApplicationRecord
  has_one_attached :photo
  has_many :bookings
  belongs_to :user
end
