class Ability
  include CanCan::Ability

  def initialize(user, current_company)
    user ||= User.new # guest user (not logged in)
    if user.has_role? :admin
      can :manage, :all
    elsif user.has_role? :qm
      can :manage, User, :companies => { :id => current_company.id }
      can :create, User
    elsif
     # hebelt für's erste Berechtigungen aus
      can :manage, :all
    end
  end
end
