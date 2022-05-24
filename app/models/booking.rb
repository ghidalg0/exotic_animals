class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :animal

  validates :status, presence: true, inclusion: { in: %w(Accepted Rejected Pending) }, default: "Pending"
  validates :date, presence: true, uniqueness: true
end
