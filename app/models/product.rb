class Product < ActiveRecord::Base
  attr_accessible :baseunit, :deletionflag, :description, :eannumber, :productgroup, :productkey, :purchaseprice, :salesprice, :shorttext, :taxcode, :user_id
end
