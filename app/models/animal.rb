class Animal < ApplicationRecord
  enum adoption: { disponivel: 0, adotado: 1 }
  enum gender: { macho: 0, femea: 1 }

  has_one_attached :photo
end
