class CreateOutgoingArrows < ActiveRecord::Migration
  def change
    create_table :outgoing_arrows do |t|
      t.integer :step_id
      t.integer :successor_id

      t.timestamps
    end
  end
end
