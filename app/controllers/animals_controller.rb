# frozen_string_literal: true

class AnimalsController < ApplicationController
  before_action :load_animals, only: %i[show edit update destroy]

  def index
    @q = Animal.ransack(params[:q])
    @animals = @q.result(distinct: true).page(params[:page])
  end

  def show; end

  def new
    @animal = Animal.new
  end

  def adoption
    @animal = Animal.find(params[:id])
    @animal.adopted!
    redirect_to animal_path, notice: 'Animal adotado com sucesso!'
  end


  def edit; end

  def create
    @animal = Animal.new(animal_params)

    if @animal.save
      redirect_to animals_path, notice: 'Animal cadastrado com sucesso.'
    else
      render :new
    end
  end

  def update
    if @animal.update(animal_params)
      redirect_to animal_path, notice: 'Animal atualizado com sucesso.'
    else
      render :edit
    end
  end

  def destroy
    @animal.destroy
    redirect_to animals_path, notice: 'Excluido com sucesso.'
  end

  private

  def load_animals
    @animal = Animal.find(params[:id])
  end

  def animal_params
    params.require(:animal).permit(:name, :description, :race, :comment, :photo, :medicament, :gender, :sick, :history)
  end
end
