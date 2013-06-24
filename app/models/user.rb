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
  attr_accessible :name, :email, :password, :phone, :rk_id
  has_many :activities, :dependent => :destroy
  has_many :sins, :dependent => :destroy
  has_secure_password

  before_save { |user| user.email = user.email.downcase }
  before_save :create_remember_token
  
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end