class AnimalsController < ApplicationController

  def index
    @animal = Animal.all
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @animal = Animal.new
  end

  def create
    @user = User.find(params[:user_id])
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
    params.require(:animal).permit(:name, :species, :location, :category, :birthday, :bio)
  end
end
