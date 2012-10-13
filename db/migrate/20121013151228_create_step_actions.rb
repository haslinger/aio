class CreateStepActions < ActiveRecord::Migration
  def change
    create_table :step_actions do |t|
      t.string :name
      t.integer :step_model_id

      t.timestamps
    end
  end
end
