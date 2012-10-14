class Paymentterm < ActiveRecord::Base

  has_paper_trail
  
  attr_accessible :company_id, :day1, :day2, :day3, :percent1, :percent2, :shorttext, :term
  
  has_many :customers, :dependent => :restrict
  belongs_to :company
  
end
