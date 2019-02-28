class User < ApplicationRecord
  validates :u_name, presence: true
  validates :password_digest, presence: true
end
