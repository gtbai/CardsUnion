class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :phone
      t.string :password_digest
      #in case we have admin Accounts
      t.string :user_type
      t.timestamps
    end
  end
end
