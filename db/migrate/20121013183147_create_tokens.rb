class CreateTokens < ActiveRecord::Migration
  def change
    create_table :tokens do |t|
      t.integer :company_id
      t.integer :process_instance_id
      t.integer :step_id
      t.integer :created_by
      t.integer :updated_by
      t.integer :token_status_id
      t.integer :last_step_id
      t.integer :object_id

      t.timestamps
    end
  end
end
