class User < ApplicationRecord
  has_secure_password

  has_many :pets, through: :agency

  validates :name, uniqueness: true

end
