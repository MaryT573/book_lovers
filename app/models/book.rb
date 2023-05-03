class Book < ApplicationRecord
  validates :title, :summary, :author, :publish_date, presence: true
  has_many :favorites
  has_many :users, through: :favorites
end
