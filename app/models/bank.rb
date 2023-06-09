# frozen_string_literal: true

class Bank < ApplicationRecord
  enum category: { entrada: 1, saída: 2 }

  validates :title, :category, :amount, presence: true
  validates :amount, length: { maximum: 7 }


  def self.balance
    entrada.sum(:amount) - saída.sum(:amount)
  end
end
