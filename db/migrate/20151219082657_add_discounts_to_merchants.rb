class AddDiscountsToMerchants < ActiveRecord::Migration
  def change
    add_column :merchants, :discount_1, :decimal, :default => 0.95
    add_column :merchants, :discount_2, :decimal, :default => 0.9
    add_column :merchants, :discount_3, :decimal, :default => 0.85
  end
end
