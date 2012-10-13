class CreateBusinessProcesses < ActiveRecord::Migration
  def change
    create_table :business_processes do |t|
      t.integer :company_id
      t.integer :created_by
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
