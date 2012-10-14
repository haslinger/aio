class Step < ActiveRecord::Base
  has_paper_trail

  attr_accessible :company_id, :created_by, :name, :process_id, :step_action_id, :step_model_id, :business_process_id, :default_start

  validates_presence_of :name
  validates_presence_of :step_action_id
  validates_presence_of :step_model_id
  validates_uniqueness_of :name, :scope => [:company_id, :business_process_id]

  belongs_to :company
  belongs_to :business_process
  belongs_to :step_action
  belongs_to :step_model

  has_many :outgoing_arrows, :dependent => :restrict
  has_many :successors, :through => :outgoing_arrows, :dependent => :restrict

  has_many :incoming_arrows, :class_name => "OutgoingArrow", :foreign_key => "step_id", :dependent => :restrict
  has_many :predecessors, :through => :incoming_arrows, :source => :step, :dependent => :restrict

  has_many :tokens, :dependent => :restrict
  has_many :advanced_tokens, :class_name => "Token", :foreign_key => "last_step_id", :dependent => :restrict
end
