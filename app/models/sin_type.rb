class SinType < ActiveRecord::Base
  attr_accessible :calories, :name, :phrase
  belongs_to :sin
end
