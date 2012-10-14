class RemoveBaseunitFromProducts < ActiveRecord::Migration
  def up
    remove_column :products, :baseunit
  end

  def down
    add_column :products, :baseunit, :string
  end
end
