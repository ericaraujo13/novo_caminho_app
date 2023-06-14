class AddGenderToAnimal < ActiveRecord::Migration[7.0]
  def change
    add_column :animals, :gender, :integer
  end
end
