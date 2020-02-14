class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :kind
      t.integer :age
      t.integer :owner_id
      t.string :color
      t.string :hair
      t.string :image
      t.boolean :to_adopt, default: true
      t.boolean :hungry, default: true
      t.boolean :sitter, default: false

      t.timestamps
    end
  end
end
