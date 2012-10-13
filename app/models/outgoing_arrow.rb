class OutgoingArrow < ActiveRecord::Base
  attr_accessible :step_id, :successor_id, :company_id

  validates_presence_of :step_id
  validates_presence_of :successor_id
  validates_presence_of :company_id
  validates_uniqueness_of :step_id, :scope => [:successor_id, :company_id]

  belongs_to :step
  belongs_to :successor, :class_name => "Step"
  belongs_to :company

end
