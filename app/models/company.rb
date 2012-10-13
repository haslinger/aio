class Company < ActiveRecord::Base
  attr_accessible :name

  validates_presence_of :name
  validates_uniqueness_of :name

  has_many :users, :through => :employments, :dependent => :restrict
  has_many :employments, :dependent => :restrict
  has_many :currencies, :dependent => :restrict
  has_many :paymentterms, :dependent => :restrict
  has_many :units, :dependent => :restrict
  has_many :customers, :dependent => :restrict
  has_many :products, :dependent => :restrict
  has_many :business_processes, :dependent => :restrict
  has_many :steps, :dependent => :restrict
  has_many :outgoing_arrows, :dependent => :restrict
  has_many :process_instances, :dependent => :restrict
  has_many :tokens, :dependent => :restrict
end
