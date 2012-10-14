class Currency < ActiveRecord::Base

  has_paper_trail

  attr_accessible :company_id, :currency, :shorttext 
  
  validates_presence_of :currency, :shorttext
  
  has_many :customers, :dependent => :restrict 
  has_many :invoice_headers, :dependent => :restrict 
  
  belongs_to :company
  
end
