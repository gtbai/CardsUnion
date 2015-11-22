class CreateFees < ActiveRecord::Migration
  def change
    create_table :fees do |t|
      t.boolean :type
      t.decimal :amount
      t.references :card, index:true
      t.timestamps
    end
  end
end
