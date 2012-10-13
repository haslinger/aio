class StepAction < ActiveRecord::Base
  attr_accessible :step_model_id, :name

  validates_presence_of :name
  validates_uniqueness_of :name, :scope => :step_model_id

  validates_presence_of :step_model_id
  belongs_to :model
  belongs_to :step_model
  has_many :steps, :dependent => :restrict
end
