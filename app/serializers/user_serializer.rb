class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :password

  belongs_to :agency

  has_many :pets, through: :agency
end
