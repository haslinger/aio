class CreateInvoiceHeaders < ActiveRecord::Migration
  def change
    create_table :invoice_headers do |t|
      t.integer :company_id
      t.integer :customer_id
      t.string :reference_number
      t.integer :currency_id
      t.integer :created_by
      t.text :consignee
      t.integer :dicount
      t.integer :discountvalue_header,     :precision => 10, :scale => 2, :default => 0.0, :null => false
      t.integer :discountvalue_position,   :precision => 10, :scale => 2, :default => 0.0, :null => false
      t.integer :taxvalue_full ,           :precision => 10, :scale => 2, :default => 0.0, :null => false
      t.integer :taxvalue_half,            :precision => 10, :scale => 2, :default => 0.0, :null => false
      t.integer :valuevalue_netto_full,    :precision => 10, :scale => 2, :default => 0.0, :null => false
      t.integer :value_netto_half,         :precision => 10, :scale => 2, :default => 0.0, :null => false
      t.integer :value_netto,              :precision => 10, :scale => 2, :default => 0.0, :null => false
      t.integer :value_payed,              :precision => 10, :scale => 2, :default => 0.0, :null => false

      t.timestamps
    end
  end
end
