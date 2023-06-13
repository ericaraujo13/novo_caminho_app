class AddAdoptionToAnimals < ActiveRecord::Migration[7.0]
  def change
    add_column :animals, :adoption, :integer, default: 0
  end
end
