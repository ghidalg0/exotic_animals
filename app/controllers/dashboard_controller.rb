class DashboardController < ApplicationController

  def display
    @animals = Animal.all
    @bookings = Booking.all
  end

  # def accept_booking
  #   @booking = Booking.find(params[:id])
  #   @booking.status = "Accepted"
  #   @booking.save
  # end

  # def reject_booking
  #   @booking = Booking.find(params[:id])
  #   @booking.status = "Rejected"
  #   @booking.save
  # end
end
