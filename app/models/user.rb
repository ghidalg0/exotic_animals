class User < ApplicationRecord
  has_many :bookings
  has_many :rented_animals, through: :bookings, source: :animal
  has_many :animals
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true, uniqueness: true
  validates :first_name, presences: true
  validates :last_name, presences: true
  validates :address, presences: true
end
