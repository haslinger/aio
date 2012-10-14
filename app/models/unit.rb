class Unit < ActiveRecord::Base

  has_paper_trail
  
  attr_accessible :company_id, :isocode, :shorttext, :unit
  
  validates_presence_of :shorttext, :unit
  
  has_many :products, :dependent => :restrict
  has_many :invoice_positions, :dependent => :restrict
  
  belongs_to :company
  
end
