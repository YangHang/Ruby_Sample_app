module SessionsHelper
  def sign_in(user)
    cookies.permanent[:remeber_token] = user.remeber_token
    self.current_user = user
  end
  def current_user=(user)
    @current_user = user
  end
  def current_user
  @current_user ||= User.find_by_remeber_token(cookies[:remember_token])
  end
  def signed_in?
    cookies[:remeber_token]
  end
  def sign_out
    self.current_user = nil
    cookies.delete(:remeber_token)
  end
  def current_user?(user)
    user.remeber_token == cookies[:remeber_token]
  end
  def redirect_back_or(default)
    redirect_to(session[:return_to] || default)
     
  end
  def store_location
    session[:return_to] = request.fullpath
  end
end
