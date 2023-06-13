class Bank < ApplicationRecord
  enum category: { entrada: 1, saida: 2 }

  before_validation :calculate_total_amount

  def calculate_total_amount
    entries = Bank.where(category: :entrada).sum(:amount)
    exits = Bank.where(category: :saida).sum(:amount)

    self.total_amount = entries - exits
  end
end
