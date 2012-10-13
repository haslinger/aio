class ChangeProcessIdInSteps < ActiveRecord::Migration
  def up
    add_column :steps, :business_process_id, :integer
    remove_column :steps, :process_id
  end

  def down
    remove_column :steps, :business_process_id
    add_column :steps, :process_id, :integer
  end
end
