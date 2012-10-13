class BusinessProcess < ActiveRecord::Base
  has_paper_trail
  attr_accessible :company_id, :created_by, :description, :name

  validates_presence_of :name
  validates_uniqueness_of :name

  validates_presence_of :company_id
  belongs_to :company
end
