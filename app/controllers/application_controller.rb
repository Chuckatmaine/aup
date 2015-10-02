class ApplicationController < ActionController::Base
  rescue_from DeviseLdapAuthenticatable::LdapException do |exception|
    render :text => exception, :status => 500
  end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception
  #before_action :authenticate_user!
  helper_method :current_user


     def current_user
         @current_user ||= User.find(session[:user_id]) if session[:user_id]
     end

end
