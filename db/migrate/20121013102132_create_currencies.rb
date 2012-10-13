class CreateCurrencies < ActiveRecord::Migration
  def change
    create_table :currencies do |t|
      t.integer :company_id
      t.string :currency
      t.string :shorttext

      t.timestamps
    end
  end
end
