require 'rails_helper'

RSpec.describe Book, type: :model do
  describe 'relationships' do
    it { should have_many(:favorites) }
    it { should have_many(:users).through(:favorites) }
  end

  describe 'validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :author }
    it { should validate_presence_of :summary }
    it { should validate_presence_of :publish_date }
  end
end
