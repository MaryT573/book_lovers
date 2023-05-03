class User < ApplicationRecord
  validates :first_name, :last_name, presence: true
  validates :age, presence: true, numericality: { greater_than_or_equal_to: 18 }
  validates :gender, presence: true, inclusion: { in: %w(male female nonbinary) }
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: 'Must be valid email address' }
  has_many :favorites
  has_many :books, through: :favorites
  has_many :connections
  has_many :friends, through: :connections
  has_secure_password
end
