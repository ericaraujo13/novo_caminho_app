class Animal < ApplicationRecord
  enum adoption: { disponivel: 0, adotado: 1 }

  has_one_attached :photo
end
