# frozen_string_literal: true

class Address < ApplicationRecord
  belongs_to :contact

  validates :city, :number, :street, presence: true
end
