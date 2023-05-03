class Connection < ApplicationRecord
    validates :friend_id, :time, :date, presence: true
    belongs_to :user
    belongs_to :friend, class_name: 'User'
end
