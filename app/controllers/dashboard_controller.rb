class DashboardController < ApplicationController

  def display
    @animals = current_user.animals
    @bookings = current_user.bookings
  end

end
