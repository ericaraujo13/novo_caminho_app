class Address < ApplicationRecord
  belongs_to :contact

  validates :city, :number, :street, presence: true
end
