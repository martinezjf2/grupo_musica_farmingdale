class User < ApplicationRecord

     has_secure_password
     has_one_attached :avatar


validates :username, presence: {message: "can't be empty"}, uniqueness: true
validates :password, presence: {message: "can't be empty"}
validates :first_name, presence: {message: "can't be empty"}
validates :last_name, presence: {message: "can't be empty"}
validates :avatar, presence: {message: "can't be empty"}
validates :email, presence: {message: "can't be empty"}, uniqueness: true





attr_accessor :admin_code
  

end
