class AnimalsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @animals = Animal.all
    @markers = @animals.geocoded.map do |animal|
      {
        lat: animal.latitude,
        lng: animal.longitude,
        info_window: render_to_string(partial: "info_window", locals: { animal: animal })
      }
    end
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def new
    @user = current_user
    @animal = Animal.new
  end

  def create
    @user = current_user
    @animal = Animal.new(animal_params)
    @animal.user = @user
    if @animal.save
      redirect_to animal_path(@animal)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :species, :location, :category, :birthday, :bio, :photo)
  end
end
