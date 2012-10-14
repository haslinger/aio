class AddCreatedByToCurrencies < ActiveRecord::Migration
  def change
    add_column :currencies, :created_by, :integer
  end
end
