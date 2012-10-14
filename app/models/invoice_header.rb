class InvoiceHeader < ActiveRecord::Base

  has_paper_trail
  
  attr_accessible :company_id, :consignee, :created_by, :currency_id, :customer_id, 
                  :dicount, :discountvalue_header, :discountvalue_position, 
                  :reference_number, :taxvalue_full, :taxvalue_half, 
                  :value_netto, :value_netto_half, :value_payed, :valuevalue_netto_full, :invoice_positions_attributes

  validates_presence_of :currency_id, :customer_id
                    
  has_many :invoice_positions, :dependent => :destroy
  
  belongs_to :company                  
  belongs_to :currency
  belongs_to :customer
  
  accepts_nested_attributes_for :invoice_positions, :allow_destroy => true
  
end
