class Contact < ApplicationRecord
  has_one :address, dependent: :destroy
  accepts_nested_attributes_for :address

  def full_name
    "#{first_name} #{last_name}"
  end
end
