class CreateMerchants < ActiveRecord::Migration
  def change
    create_table :merchants do |t|
      t.string :store_name
      t.string :store_type
      t.text :introduction
      t.string :address

      t.timestamps
    end
  end
end
