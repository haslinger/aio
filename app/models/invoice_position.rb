class InvoicePosition < ActiveRecord::Base
  attr_accessible :base_price, :created_by, :description, :discount, :price, :product_id, :quantity, :textposition, :unit_id, :value, :vatrate
end
