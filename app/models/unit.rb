class Unit < ActiveRecord::Base
  attr_accessible :company_id, :isocode, :shorttext, :unit
  
  has_many :products, :dependent => :restrict
  belongs_to :company
  
end
