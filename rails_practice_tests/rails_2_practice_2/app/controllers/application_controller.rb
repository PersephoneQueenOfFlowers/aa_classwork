class ApplicationController < ActionController::Base

  helper_method :current_user, :logged_in?

  def login(user)
    #assign session_token and give it as a cookie to the client's browser 
    session[:session_token] = user.reset_session_token! #a method 
    @current_user = user 
    #putting a key-value pair into the session hash 
    #session hash is only available in controllers and views 
  end

  def current_user 
    return nil unless session[:session_token]

    @current_user ||= User.find_by(session_token: session[:session_token])
    
  end

  def logged_in?
    !!current_user 
  end

  def logout 
    current_user.reset_session_token! if logged_in? 
    session[:session_token] = nil 
    @current_user = nil 
  end

  def require_logged_in 
    redirect_to new_session_url unless logged_in? 
  end
end
