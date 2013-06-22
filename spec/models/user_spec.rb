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

require 'spec_helper'

describe User do
  pending "add some examples to (or delete) #{__FILE__}"
end
