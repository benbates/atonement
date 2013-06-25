class SessionsController < ApplicationController
  
  def rk_auth
    access_token = HealthGraph.access_token(params[:code])
    set_access_token(access_token)
    redirect_to root_url, :notice => 'Successfully Connected RunKeeper!'
  end
  
  def get_fitness_activities
    rk_user = HealthGraph::User.new(current_user.rk_token)
    fitness_activities = rk_user.fitness_activities.items
    puts fitness_activities
    fitness_activities.each do |fa|
      uri = fa.uri
      if Activity.find_by_uri(uri).user_id == current_user.id
        act = Activity.find_by_uri(uri)
      else
        act = current_user.activities.create()
      end
      act.activity_date = fa.start_time
      act.activity_type = fa.type      
      act.calories = fa.total_calories.to_i
      act.uri = fa.uri
      act.duration = fa.duration.to_i
#      act.distance = fa.total_distance      
      act.save
    end
    redirect_to current_user
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
