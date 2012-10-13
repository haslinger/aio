class InvoiceHeader < ActiveRecord::Base
  attr_accessible :company_id, :consignee, :created_by, :currency_id, :customer_id, :dicount, :discountvalue_header, :discountvalue_position, :reference_number, :taxvalue_full, :taxvalue_half, :value_netto, :value_netto_half, :value_payed, :valuevalue_netto_full
end
