class ChangeDataTypeForLevel < ActiveRecord::Migration
  def change
  	#Change datatype of level from string to integer
  	change_column :cards, :level, :integer
  end
end
