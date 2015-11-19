class ChangeUserIdToAccountId < ActiveRecord::Migration
  def change
  	rename_column :notices, :user_id, :account_id
  end
end
