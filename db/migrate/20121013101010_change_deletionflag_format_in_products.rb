class ChangeDeletionflagFormatInProducts < ActiveRecord::Migration
  def up
   change_column :products, :deletionflag, :boolean
  end

  def self.down
   change_column :products, :deletionflag, :string
  end
end
