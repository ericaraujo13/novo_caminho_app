class BanksController < ApplicationController
  before_action :set_bank, only: %i[ show edit update destroy ]

  def index
    @banks = Bank.all
    @total_amount = Bank.where(category: :entrada).sum(:amount) - Bank.where(category: :saida).sum(:amount)
  end

  def show
    @bank = Bank.find(params[:id])
  end

  def new
    @bank = Bank.new
  end

  def edit
  end

  def create
    @bank = Bank.new(bank_params)

    if @bank.save
      @total_amount = @bank.calculate_total_amount
      redirect_to banks_path, notice: "Bank was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @bank.update(bank_params)
      redirect_to banks_path, notice: "Bank was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @bank.destroy

    redirect_to banks_path, notice: "Bank was successfully destroyed."
  end

  private
    def set_bank
      @bank = Bank.find(params[:id])
    end

    def bank_params
      params.require(:bank).permit(:title, :category, :amount)
    end
end
