class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :kind, :age, :color, :hair, :hungry, :sitter, :image, :to_adopt

  belongs_to :owner
end
