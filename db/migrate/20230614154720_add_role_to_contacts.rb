class AddRoleToContacts < ActiveRecord::Migration[7.0]
  def change
    add_column :contacts, :role, :string
  end
end
