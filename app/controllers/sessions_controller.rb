class SessionsController < ApplicationController
  
  def create

    puts params[:code]
    access_token = HealthGraph.access_token(params[:code])
    puts access_token
    user = HealthGraph::User.new(access_token)

    reset_session
    profile = user.profile
    fitness_activities = user.fitness_activities.items
    sleep = user.sleep.items
    profile.body.each do |key, value|
      puts "#{key} => #{value}"
    end
    puts fitness_activities.count
    fitness_activities.each do |fa|
      puts fa
    end
    redirect_to     root_url, :notice => 'Signed in!'
  end
  
  def connect
    auth_url = HealthGraph.authorize_url
#    auth_url = "#{HealthGraph.authorization_url}?response_type=code&client_id=#{HealthGraph.client_id}&redirect_uri=#{HealthGraph.authorization_redirect_url}"
    redirect_to auth_url
  end
  
end
