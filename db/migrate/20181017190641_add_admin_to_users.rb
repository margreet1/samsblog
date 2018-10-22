class AddAdminToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :admin, :boolean, null: false, default: false
  end
end
# we add a column, to users table, called admin, type boolean
