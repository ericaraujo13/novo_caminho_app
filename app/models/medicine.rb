# frozen_string_literal: true

class Medicine < ApplicationRecord
  validates :quantity, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
