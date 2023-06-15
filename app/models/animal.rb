class Animal < ApplicationRecord
  enum adoption: { disponível: 0, adotado: 1 }
  enum gender: { macho: 0, fêmea: 1 }
  enum sick: { doente: 0, saudavel: 1 }

  has_one_attached :photo
end
