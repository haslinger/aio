class AddCreatedByToUnits < ActiveRecord::Migration
  def change
    add_column :units, :created_by, :integer
  end
end
