class AddHistoryToAnimals < ActiveRecord::Migration[7.0]
  def change
    add_column :animals, :history, :text
  end
end
