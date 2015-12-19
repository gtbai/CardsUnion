class ChangeAmountToOriginalAmountAndAddDiscount < ActiveRecord::Migration
  def change
  	rename_column :fees, :amount, :original_amount
  	add_column :fees, :discount, :decimal
  end
end
