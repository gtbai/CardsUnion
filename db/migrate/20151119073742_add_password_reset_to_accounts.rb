class AddPasswordResetToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :password_reset_token, :string
    add_column :accounts, :password_reset_sent_at, :datetime
  end
end
