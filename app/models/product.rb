class Product < ActiveRecord::Base

  has_paper_trail
  
  attr_accessible :baseunit, :deletionflag, :description, :eannumber, :productgroup, 
                  :productkey, :purchaseprice, :salesprice, :shorttext, :taxcode, :created_by
                  
  belongs_to :unit  
  belongs_to :company
                  
end
