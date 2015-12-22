class AddRemarkToFees < ActiveRecord::Migration
  def change
    add_column :fees, :remark, :text
  end
end