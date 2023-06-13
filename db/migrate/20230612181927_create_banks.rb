class CreateBanks < ActiveRecord::Migration[7.0]
  def change
    create_table :banks do |t|
      t.string :title
      t.integer :category
      t.decimal :amount

      t.timestamps
    end
  end
end
