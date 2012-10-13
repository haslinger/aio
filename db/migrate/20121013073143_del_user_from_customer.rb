class DelUserFromCustomer < ActiveRecord::Migration
  def up
    remove_column :customers, :user
  end

  def down
    add_column :customers, :user_id, :integer
  end
end
