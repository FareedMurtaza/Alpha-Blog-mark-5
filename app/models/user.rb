class User < ApplicationRecord
  validates :username, presence: true,
            uniqueness: {case_sensitive: false},
            length: {minimum: 3, maximum: 30}

  VALID_EMAIL_REGEX= /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :email, presence: true,
            uniqueness: {case_sensitive: false},
            length: {maximum: 50},
            format: {with: VALID_EMAIL_REGEX}
end
