class Contact < ApplicationRecord
  has_one :address, dependent: :destroy
  accepts_nested_attributes_for :address

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :cpf, presence: true


  def full_name
    "#{first_name} #{last_name}"
  end
end
