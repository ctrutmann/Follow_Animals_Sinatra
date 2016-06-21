helpers do
  def login(user)
    session[:user_id] = user.id
  end

  def logged_in?
    session[:user_id].present?
  end

  def logout
    session[:user_id] = nil
  end

  def current_user
    @current_user ||= User.find(session[:id]) if session[:id]
  end
end