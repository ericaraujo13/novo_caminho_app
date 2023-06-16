class AddSickToAnimal < ActiveRecord::Migration[7.0]
  def change
    add_column :animals, :sick, :integer
  end
end
