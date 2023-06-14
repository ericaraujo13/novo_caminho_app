class AnimalsController < ApplicationController
  before_action :load_animals, only: %i[ show edit update destroy ]

  def index
    @animals = Animal.all
  end

  def show; end

  def new
    @animal = Animal.new
  end

  def edit;
  end

  def create
    @animal = Animal.new(animal_params)

    if @animal.save
      redirect_to animals_path, notice: 'Animal was successfully created.'
    else
      render :new
    end
  end

  def update
    if @animal.update(animal_params)
      redirect_to animal_path, notice: 'Animal was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @animal.destroy
    redirect_to animals_path, notice: 'Animal was successfully destroyed.'
  end

  private

  def load_animals
    @animal = Animal.find(params[:id])
  end

  def animal_params
    params.require(:animal).permit(:name, :description, :race, :comment, :photo, :medicament, :gender)
  end
end
