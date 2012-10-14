class CreateTokenStatuses < ActiveRecord::Migration
  def change
    create_table :token_statuses do |t|
      t.string :name

      t.timestamps
    end
  end
end
