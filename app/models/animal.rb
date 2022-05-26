class Animal < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_animals,
  against: %i[name species category],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  has_one_attached :photo
  has_many :bookings
  belongs_to :user

  validates :name, presence: true, uniqueness: true
  validates :species, presence: true
  validates :location, presence: true
  validates :category, presence: true
  validates :birthday, presence: true
end
