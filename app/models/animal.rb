class Animal < ApplicationRecord
  enum adoption: { disponível: 0, adotado: 1 }
  enum gender: { macho: 0, fêmea: 1 }
  enum sick: { doente: 0, saudavel: 1 }

  has_one_attached :photo

  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :gender, presence: true
  validates :sick, presence: true
  validates :race, presence: true
end
