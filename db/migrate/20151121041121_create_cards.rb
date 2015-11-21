class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :level
      t.decimal :balance
      t.integer :points

      t.timestamps
    end
  end
end
