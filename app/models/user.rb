class User < ApplicationRecord

     has_secure_password


validates :username, presence: {message: "can't be empty"}, uniqueness: true
validates :password, presence: {message: "can't be empty"}



end
