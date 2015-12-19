class AddLevelsToMerchants < ActiveRecord::Migration
  def change
    add_column :merchants, :level_1, :integer, :default => 100
    add_column :merchants, :level_2, :integer, :default => 200
    
  end
end
