class User < ApplicationRecord
  has_secure_password

  belongs_to :user_group 

  has_many :messages
  has_many :conversations, through: :messages
end
