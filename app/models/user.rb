class User < ApplicationRecord

  has_secure_password

  has_many :user_readings

  validates :email, uniqueness: true, allow_blank: true
  validates :password, length: { minimum: 8 }
  validates :password, confirmation: true
  validates :name, length: { minimum: 3 }, uniqueness: { case_sensitive: false }

  # def self.find_or_create_by_omniauth(auth_hash)  #placeholder for omniauth
  #   where(email: auth_hash[:info][:email]).first_or_create do |user|
  #     user.name = auth_hash[:info][:name]
  #     user.password = SecureRandom.hex
  #   end
  # end
end
