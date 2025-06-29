class User < ApplicationRecord
  has_secure_password
  has_many :posts # A user can have many posts
end
