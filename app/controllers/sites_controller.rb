class SitesController < ActionController::Base
  before_action :load_animals
  layout "site", only: :index

  def index
    @animals_available = @animals.available.page(params[:page])
  end

  def animal_history
    @animal = Animal.find(params[:id])
  end

  private

  def load_animals
    @animals = Animal.all
  end

  def animal_params
    params.require(:animal).permit(:name, :description, :race, :comment, :photo)
  end
end
