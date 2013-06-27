class Sin < ActiveRecord::Base
  attr_accessible :calories, :reminder_time, :user_id, :phone, :sin_type_id, :quantity, :date
  belongs_to :users
end
