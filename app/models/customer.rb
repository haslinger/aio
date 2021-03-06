class Customer < ActiveRecord::Base

  has_paper_trail
  
  attr_accessible :academictitle, :city, :comment, :consignee, 
                  :contactperson, :country, :currency_id, :customergroup, 
                  :deletionflag, :discount, :email, :fax, 
                  :firstname, :lastname, :mobil, :paymentterm_id, :phone, :salesman, :street, 
                  :taxcode, :taxnumber, :title, :created_by, :zipcode, :company_id

  validates_presence_of :lastname, :street, :zipcode, :city, :country, :currency_id, :paymentterm_id
  
  belongs_to :paymentterm
  belongs_to :currency
  belongs_to :company
  
  has_many :invoice_headers, :dependent => :restrict
  
end
