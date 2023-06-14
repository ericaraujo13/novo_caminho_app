class AddMedicamentToAnimals < ActiveRecord::Migration[7.0]
  def change
    add_column :animals, :medicament, :text
  end
end
