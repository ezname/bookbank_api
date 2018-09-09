class User < ApplicationRecord
  has_secure_password

  has_many :reviews, foreign_key: :author_id

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :password_digest, presence: true
end
