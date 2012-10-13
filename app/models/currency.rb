class Currency < ActiveRecord::Base
  attr_accessible :company_id, :currency, :shorttext 
  
  has_many :customers, :dependent => :restrict 
  belongs_to :company
  
end
