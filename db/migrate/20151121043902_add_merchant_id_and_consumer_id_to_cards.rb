class AddMerchantIdAndConsumerIdToCards < ActiveRecord::Migration
  def change
    add_column :cards, :merchant_id, :integer
    add_column :cards, :consumer_id, :integer
  end
end
