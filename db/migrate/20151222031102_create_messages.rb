class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :content
      t.references :consumer
      t.references :merchant

      t.timestamps
    end
    add_index :messages, :consumer_id
    add_index :messages, :merchant_id
  end
end