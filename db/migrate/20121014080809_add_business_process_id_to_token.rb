class AddBusinessProcessIdToToken < ActiveRecord::Migration
  def change
    add_column :tokens, :business_process_id, :integer
  end
end
