class CreateProcessInstances < ActiveRecord::Migration
  def change
    create_table :process_instances do |t|
      t.integer :company_id
      t.integer :created_by
      t.integer :business_process_id

      t.timestamps
    end
  end
end
