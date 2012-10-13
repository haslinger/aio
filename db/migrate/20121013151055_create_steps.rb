class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :name
      t.integer :company_id
      t.integer :created_by
      t.integer :process_id
      t.string :step_model_id
      t.string :step_action_id

      t.timestamps
    end
  end
end
