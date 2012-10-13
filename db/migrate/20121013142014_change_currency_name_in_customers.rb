class ChangeCurrencyNameInCustomers < ActiveRecord::Migration
  def up
    remove_column :customers, :currency
    remove_column :customers, :paymentterms
    add_column :customers, :currency_id, :integer
    add_column :customers, :paymentterm_id, :integer
  end

  def down
    remove_column :customers, :currency_id
    remove_column :customers, :paymentterm_id
    add_column :customers, :currency, :string
    add_column :customers, :paymentterms, :string  
  end
end
