class Sin < ActiveRecord::Base
  attr_accessible :calories, :reminder_time, :user_id
  belongs_to :users
end
