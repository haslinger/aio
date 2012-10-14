class Page < ActiveRecord::Base
  has_paper_trail
  attr_accessible :content, :name

  validates_presence_of :content, :name
  validates_uniqueness_of :name
end
