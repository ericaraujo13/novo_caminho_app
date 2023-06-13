class AdoptionsController < ApplicationController
  before_action :load_animals

  def index
    @animals_available = @animals.where(adoption: :disponivel)
  end

  private

  def load_animals
    @animals = Animal.all
  end

  def animal_params
    params.require(:animal).permit(:name, :description, :race, :comment, :photo)
  end
end
