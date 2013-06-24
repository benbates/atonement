module ActivitiesHelper

  def fitness_activities
    rk_user = HealthGraph::User.new(current_user.rk_token)
    fitness_activities = rk_user.fitness_activities.items
    fitness_activities.each do |fa|
      uri = fa.uri
      activity = rk_user.fitness_activity_summary uri
      puts "Activity: #{activity.type}"
      if Activity.find_by_uri(uri)
        act = Activity.find_by_uri(uri)
      else
        act = current_user.activities.create()
      end
      act.activity_date = activity.start_time
      act.activity_type = activity.type      
      act.calories = activity.total_calories
      act.uri = activity.uri
      act.duration = activity.duration
#      act.distance = activity.total_distance      
      act.save
    end
    return fitness_activities
  end
  
end
