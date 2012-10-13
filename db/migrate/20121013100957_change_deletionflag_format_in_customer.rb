class ChangeDeletionflagFormatInCustomer < ActiveRecord::Migration

  def up
   change_column :customers, :deletionflag, :boolean
  end

  def self.down
   change_column :customers, :deletionflag, :string
  end 
   
end
