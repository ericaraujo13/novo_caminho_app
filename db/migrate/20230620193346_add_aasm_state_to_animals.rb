class AddAasmStateToAnimals < ActiveRecord::Migration[7.0]
  def change
    add_column :animals, :aasm_state, :string
  end
end
