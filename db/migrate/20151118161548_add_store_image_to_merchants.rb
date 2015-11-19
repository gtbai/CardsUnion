class AddStoreImageToMerchants < ActiveRecord::Migration
  def change
    add_column :merchants, :store_image, :string
  end
end
