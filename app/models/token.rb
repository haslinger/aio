class Token < ActiveRecord::Base
  has_paper_trail
  attr_accessible :company_id, :created_by, :last_step_id, :object_id, :process_instance_id, :step_id, :token_status_id, :updated_by, :business_process_id

  validates_presence_of :company_id
  validates_presence_of :token_status_id

  belongs_to :token_status
  belongs_to :company
  belongs_to :last_step, :class_name => 'Step'
  belongs_to :step
  belongs_to :process_instance
  belongs_to :business_process
end
