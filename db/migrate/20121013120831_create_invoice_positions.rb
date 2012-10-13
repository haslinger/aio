class CreateInvoicePositions < ActiveRecord::Migration
  def change
    create_table :invoice_positions do |t|
      t.integer :invoice_header_id
      t.boolean :textposition
      t.integer :product_id
      t.integer :quantity,           :precision => 10, :scale => 2, :default => 0.0, :null => false
      t.integer :unit_id
      t.integer :discount,           :precision => 10, :scale => 2, :default => 0.0, :null => false
      t.integer :value,              :precision => 10, :scale => 2, :default => 0.0, :null => false
      t.integer :vatrate
      t.integer :price,              :precision => 10, :scale => 2, :default => 0.0, :null => false
      t.integer :base_price,         :precision => 10, :scale => 2, :default => 0.0, :null => false
      t.text :description
      t.integer :created_by

      t.timestamps
    end
  end
end
