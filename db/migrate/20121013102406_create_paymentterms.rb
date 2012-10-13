class CreatePaymentterms < ActiveRecord::Migration
  def change
    create_table :paymentterms do |t|
      t.integer :company_id
      t.string :term
      t.string :shorttext
      t.integer :day1
      t.integer :percent1
      t.integer :day2
      t.integer :percent2
      t.integer :day3

      t.timestamps
    end
  end
end
