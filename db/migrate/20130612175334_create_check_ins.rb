class CreateCheckIns < ActiveRecord::Migration
  def change
    create_table :check_ins do |t|
      t.string :post_id
      t.string :post_title
      t.string :tracking_type
      t.datetime :ts

      t.timestamps
    end
  end
end
