class MedicinesController < ApplicationController
  before_action :set_medicine, only: %i[ show edit update destroy ]

  def index
    @medicines = Medicine.all
  end

  def show
  end

  def new
    @medicine = Medicine.new
  end

  def edit
  end

  def create
    @medicine = Medicine.new(medicine_params)
    if @medicine.save
      redirect_to medicines_path, notice: "Medicine was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @medicine.update(medicine_params)
      redirect_to medicines_path, notice: "Medicine was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @medicine.destroy

    respond_to do |format|
      redirect_to medicines_url, notice: "Medicine was successfully destroyed."
    end
  end

  private
    def set_medicine
      @medicine = Medicine.find(params[:id])
    end

    def medicine_params
      params.require(:medicine).permit(:name, :quantity)
    end
end
