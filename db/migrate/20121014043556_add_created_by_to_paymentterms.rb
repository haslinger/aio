class AddCreatedByToPaymentterms < ActiveRecord::Migration
  def change
    add_column :paymentterms, :created_by, :integer
  end
end
