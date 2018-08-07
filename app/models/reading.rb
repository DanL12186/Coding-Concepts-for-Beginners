class Reading < ApplicationRecord
  has_many :user_readings
  has_many :users, through: :user_readings
  belongs_to :category
end
