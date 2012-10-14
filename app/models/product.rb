class Product < ActiveRecord::Base

  has_paper_trail
  
  attr_accessible :baseunit, :deletionflag, :description, :eannumber, :productgroup, 
                  :productkey, :purchaseprice, :salesprice, :shorttext, :taxcode, :created_by

  validates_presence_of :baseunit1, :productkey1, :shorttext, :salesprice
                     
  belongs_to :unit  
  belongs_to :company
  
  has_many :invoice_positions, :dependent => :restrict 
                  
end
