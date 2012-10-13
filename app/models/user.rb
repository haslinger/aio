class User < ActiveRecord::Base
  has_ancestry
  has_paper_trail

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :timeoutable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role_ids, :role,
  :firstname, :lastname, :parent_id, :deputy_ids, :function_ids, :role

  validates_uniqueness_of :email
  validates_presence_of :firstname
  validates_presence_of :email
  validates_presence_of :lastname

  ROLES = %w[admin qm_user]
  has_many :assignments, :dependent => :restrict
  has_many :roles, :through => :assignments, :dependent => :restrict

  has_many :employments, :dependent => :destroy, :inverse_of => :user
  has_many :companies, :through => :employments

  scope :in_company, lambda { |company_id| (includes(:employments).merge(Employment.in_company(company_id))) }

  def has_role?(role_sym)
    roles.any? { |r| r.name.underscore.to_sym == role_sym }
  end

  def has_not_role? (role_sym)
    !has_role?(role_sym)
  end

  def name
    self.firstname.to_s + " " + self.lastname.to_s + " (" + email + ")"
  end

  def shortname
    self.firstname.to_s + " " + self.lastname.to_s
  end

  def in_company?(id)
    self.employments.any? {|emp| emp.company_id == id.to_i}
  end
end
