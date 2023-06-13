class AddTotalAmountToBanks < ActiveRecord::Migration[6.0]
  def change
    add_column :banks, :total_amount, :decimal
  end
end
