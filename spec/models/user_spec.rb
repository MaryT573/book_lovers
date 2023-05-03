require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'relationships' do
    it { should have_many(:favorites) }
    it { should have_many(:books).through(:favorites) }
    it { should have_many(:connections) }
    it { should have_many(:friends).through(:connections) }
  end

  describe 'validations' do
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }
    it { should validate_presence_of :gender }
    it { should validate_presence_of :email }
    it { should validate_presence_of :age }
    it { should validate_numericality_of(:age).is_greater_than_or_equal_to(18) }
    it { should validate_uniqueness_of(:email).ignoring_case_sensitivity }
    #it { should validate_presence_of :password_digest }
    it { should have_secure_password }
  end
end
