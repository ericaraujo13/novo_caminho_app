class AddCommentsToAnimals < ActiveRecord::Migration[7.0]
  def change
    add_column :animals, :comment, :string
  end
end
