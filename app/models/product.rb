class Product < ActiveRecord::Base
  attr_accessible :baseunit, :deletionflag, :description, :eannumber, :productgroup, 
                  :productkey, :purchaseprice, :salesprice, :shorttext, :taxcode, :created_by
                  
  belongs_to :unit  
  belongs_to :company
                  
end
