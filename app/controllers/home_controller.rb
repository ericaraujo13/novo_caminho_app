class HomeController < ApplicationController
  def index
    @recents = Bank.order(created_at: :desc).limit(6)
    @total_amount = Bank.where(category: :entrada).sum(:amount) - Bank.where(category: :saida).sum(:amount)

  end
end
