class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    name = session[:name]
    if name.blank?
        nil
    else
      name
    end
  end

end #end of class
