class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :productkey
      t.string :shorttext
      t.text :description
      t.string :productgroup
      t.string :eannumber
      t.string :taxcode
      t.string :deletionflag
      t.string :baseunit
      t.decimal :salesprice
      t.decimal :purchaseprice
      t.integer :user_id

      t.timestamps
    end
  end
end
