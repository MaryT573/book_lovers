require 'rails_helper'

RSpec.describe Connection, type: :model do
  describe 'relationship' do
    it { should belong_to :user }
    it { should belong_to(:friend).class_name('User')}
  end

  describe 'validations' do
    it { should validate_presence_of :date }
    it { should validate_presence_of :time }
    it { should validate_presence_of :friend_id }
  end
end
