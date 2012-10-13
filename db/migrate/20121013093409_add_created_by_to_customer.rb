class AddCreatedByToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :created_by, :integer
  end
end
