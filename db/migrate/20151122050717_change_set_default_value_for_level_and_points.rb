class ChangeSetDefaultValueForLevelAndPoints < ActiveRecord::Migration
  def change
  	change_column :cards, :level, :integer, :default => 1
  	change_column :cards, :points, :integer, :default => 0
  end
end
