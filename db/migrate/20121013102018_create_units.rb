class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.integer :company_id
      t.string :unit
      t.string :shorttext
      t.string :isocode

      t.timestamps
    end
  end
end
