class AnimalsController < ApplicationController

  def index
    @animals = Animal.all
    if params[:query].present?
      @animals = Animal.where(species: params[:query])
    else
      @animals = Animal.all
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
