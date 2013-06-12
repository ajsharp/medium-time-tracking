class AddOriginToCheckIns < ActiveRecord::Migration
  def change
    add_column :check_ins, :origin, :string
  end
end
