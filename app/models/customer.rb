class Customer < ActiveRecord::Base
  attr_accessible :academictitle, :city, :comment, :consignee, 
                  :contactperson, :country, :currency, :customergroup, 
                  :deletionflag, :discount, :email, :fax, 
                  :firstname, :lastname, :mobil, :paymentterms, :phone, :salesman, :street, 
                  :taxcode, :taxnumber, :title, :created_by, :zipcode
end
