class SessionsController < ApplicationController
  
  def rk_auth
    access_token = HealthGraph.access_token(params[:code])
    set_access_token(access_token)
    rk_user = HealthGraph::User.new(access_token)

    profile = rk_user.profile
    fitness_activities = rk_user.fitness_activities.items
    sleep = rk_user.sleep.items
    profile.body.each do |key, value|
      puts "#{key} => #{value}"
    end
    puts fitness_activities.count
    fitness_activities.each do |fa|
      puts fa
    end
    redirect_to root_url, :notice => 'Successfully Connected RunKeeper!'
  end
  
  def new
  end
  
  def connect
    auth_url = HealthGraph.authorize_url
    redirect_to auth_url
  end

  def create
    user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_back_or user
    else
      flash.now[:error] = "Invalid email/password combination"
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
  
end