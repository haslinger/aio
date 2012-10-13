class CreateStepModels < ActiveRecord::Migration
  def change
    create_table :step_models do |t|
      t.string :name

      t.timestamps
    end
  end
end
