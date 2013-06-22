# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  phone      :string(255)
#  password   :string(255)
#  rk_token   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  admin      :boolean
#

class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :phone, :rk_id
end
