class Product < ActiveRecord::Base

  has_paper_trail
  
  attr_accessible :unit_id, :deletionflag, :description, :eannumber, :productgroup, :company_id,
                  :productkey, :purchaseprice, :salesprice, :shorttext, :taxcode, :created_by

  validates_presence_of :unit_id, :productkey, :shorttext, :salesprice
                     
  belongs_to :unit  
  belongs_to :company

  
  has_many :invoice_positions, :dependent => :restrict 
                  
end
