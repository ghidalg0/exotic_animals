class Animal < ApplicationRecord
  has_one_attached :photo
  has_many :bookings
  belongs_to :user

  validates :name, presence: true, uniqueness: true
  validates :species, presence: true
  validates :location, presence: true
  validates :category, presence: true
  validates :birthday, presence: true
end
