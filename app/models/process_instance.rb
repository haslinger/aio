class ProcessInstance < ActiveRecord::Base
  attr_accessible :company_id, :created_by, :business_process_id

  validates_presence_of :company_id
  validates_presence_of :business_process_id

  belongs_to :company
  belongs_to :business_process

  has_many :tokens, :dependent => :restrict
end
