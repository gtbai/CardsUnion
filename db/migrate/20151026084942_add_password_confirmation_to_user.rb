class AddPasswordConfirmationToUser < ActiveRecord::Migration
  def change
  	add_column :users, :password_confirmation, :string
  end

  def down
  	remove_column :users, :password_confirmation
  end
end
