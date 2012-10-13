class AddCompanyIdToOutgoingArrrows < ActiveRecord::Migration
  def change
    add_column :outgoing_arrows, :company_id, :integer
  end
end
