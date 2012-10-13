class Assignment < ActiveRecord::Base
  attr_accessible :role_id, :user_id

  validates_presence_of :role
  validates_presence_of :user
  validates_uniqueness_of :role, :scope => :user_id

  belongs_to :user
  accepts_nested_attributes_for :user

  belongs_to :role

  scope :in_company, lambda { |company_id| where(:company_id => company_id) }
end
