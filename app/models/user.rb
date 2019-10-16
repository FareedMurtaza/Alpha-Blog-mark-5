class User < ApplicationRecord
  has_many :articles
  validates :username, presence: true,
            uniqueness: {case_sensitive: false},
            length: {minimum: 3, maximum: 30}

  before_save{self.email = email.downcase}
  VALID_EMAIL_REGEX= /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :email, presence: true,
            uniqueness: {case_sensitive: false},
            length: {maximum: 50},
            format: {with: VALID_EMAIL_REGEX}

  has_secure_password
end
