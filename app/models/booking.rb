class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :animal

  validates :status, presence: true, inclusion: { in: %w(Accepted Rejected Peding) }
  validates :date, presence: true
end
