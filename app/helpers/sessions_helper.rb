module SessionsHelper

  def sign_in(user)
    cookies.permanent[:remember_token] = user.remember_token
    current_user = user
  end

  def signed_in?
    !current_user.nil?
  end

  def current_user=(user)
    @current_user = user
  end

  def current_user
    @current_user ||= User.find_by_remember_token(cookies[:remember_token])
  end

  def current_user?(user)
    user == current_user
  end

  def sign_out
    current_user = nil
    cookies.delete(:remember_token)
  end

  def fitness_activities
    rk_user = HealthGraph::User.new(current_user.rk_token)
    fitness_activities = rk_user.fitness_activities.items
  end
        
  def store_location
    session[:return_to] = request.fullpath
  end

  def redirect_back_or(default)
    redirect_to(session[:return_to] || default)
    session.delete(:return_to)
  end
  
  def set_access_token(access_token)
    puts "ACCESS: #{access_token}"
    puts "RT: #{current_user.remember_token}"
    current_user.rk_token = access_token
    current_user.save!
  end
  
  def signed_in_user
    unless signed_in?
      store_location
      redirect_to signin_path, notice: "Please sign in."
    end
  end
end