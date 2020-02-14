class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :kind, :age, :color, :hair, :hungry, :sitter, :image

  belongs_to :owner
end
