class Contato < ApplicationRecord
  validates :name, presence: true
  validates :telefone, format: { with: /\A\d{11}\z/, message: "deve conter exatamente 11 dígitos" }

end
