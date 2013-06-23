class Activity < ActiveRecord::Base
  attr_accessible :activity_date, :activity_type, :calories, :duration, :user_id
  belongs_to :user
end
