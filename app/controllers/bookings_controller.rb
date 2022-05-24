class BookingsController < ApplicationController
  def new
    @animal = Animal.find(params[:animal_id])
    @booking = Booking.new
  end

  def create
    @animal = Animal.find(params[:animal_id])
    @booking = Booking.new(booking_params)
    @booking.animal = @animal
    @booking.user = current_user
    @booking.status = "Pending"
    if @booking.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end

  def accept_booking
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.status = "Accepted"
    @booking.save
    redirect_to dashboard_path
  end

  def reject_booking
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.status = "Rejected"
    @booking.save
    redirect_to dashboard_path
  end

private

  def booking_params
    params.require(:booking).permit(:date)
  end
end
