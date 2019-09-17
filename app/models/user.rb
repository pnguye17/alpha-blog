class User < ApplicationRecord
    VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :username, presence: true, uniquness: { case_sensitive: false }, length: { minimum: 3}
    validates :email, presence: true, uniquness: { case_sensitive: false }, length: { minimum: 3 }, format: { with: VALID_EMAIL} 
end