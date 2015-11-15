class CreateConsumers < ActiveRecord::Migration
  def change
    create_table :consumers do |t|
      t.string :nickname
      t.string :gender

      t.timestamps
    end
  end
end
