class ApplicationController < ActionController::Base
  check_authorization :unless => :devise_controller?

  protect_from_forgery

  #  rescue_from CanCan::AccessDenied do |exception|
#    redirect_to root_url, :alert => exception.message, :locale => I18n.locale
#  end

  # HAS: 20120416: Ausnahmen werden in den einzelnen Controllern spezifiziert
  before_filter :authenticate_user!, :except => :read

  before_filter :set_locale
  before_filter :set_menu
  before_filter :set_company

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def set_menu
    session[:menu] = params[:menu] || session[:menu] || "admin"
  end

  def assigned_to_company?(company_id)
    current_user.companies.any? { |c| c.id == company_id.to_i } if current_user
  end

  def set_company
    if params[:set_company] && assigned_to_company?(params[:set_company])
      session[:company] = params[:set_company]
    end
    if current_user
      session[:company] = current_user.companies.first.id unless session[:company]
    end
  end

  def default_url_options(options={})
    logger.debug "default_url_options is passed options: #{options.inspect}\n"
    { :locale => I18n.locale }
  end

private

  helper_method :current_company
  def current_company
    Company.find_by_id(session[:company])
  end

# Hands over current_company to Ability model
  def current_ability
    @current_ability ||= Ability.new(current_user, current_company)
  end

end
