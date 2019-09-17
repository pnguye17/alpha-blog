class User < ApplicationRecord
    has_many :articles
    before_save { self.email = email.downcase }
    validates :username, presence: true, uniquness: { case_sensitive: false }, length: { minimum: 3}
    VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, uniquness: { case_sensitive: false }, length: { minimum: 3 }, format: { with: VALID_EMAIL}
    has_secure_password 
end