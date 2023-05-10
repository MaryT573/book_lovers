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

  describe 'model methods' do
    let!(:users) { create_list(:user, 5) }
    let!(:user1) { users.first }
    let!(:user2) { users.second }
    let!(:user3) { users.third }
    let!(:user4) { users.fourth }
    let!(:user5) { users.fifth }
    let!(:books) { create_list(:book, 10) }
    let!(:u1fav1) { Favorite.create!(user_id: user1.id, book_id: books.first.id) }
    let!(:u1fav2) { Favorite.create!(user_id: user1.id, book_id: books.second.id) }
    let!(:u1fav3) { Favorite.create!(user_id: user1.id, book_id: books.third.id) }
    let!(:u2fav1) { Favorite.create!(user_id: user2.id, book_id: books.fourth.id) }
    let!(:u2fav2) { Favorite.create!(user_id: user2.id, book_id: books.fifth.id) }
    let!(:u2fav3) { Favorite.create!(user_id: user2.id, book_id: books[5].id) }
    let!(:u3fav1) { Favorite.create!(user_id: user3.id, book_id: books[6].id) }
    let!(:u3fav2) { Favorite.create!(user_id: user3.id, book_id: books[7].id) }
    let!(:u3fav3) { Favorite.create!(user_id: user3.id, book_id: books[8].id) }
    let!(:u4fav1) { Favorite.create!(user_id: user4.id, book_id: books.first.id) }
    let!(:u4fav2) { Favorite.create!(user_id: user4.id, book_id: books.fourth.id) }
    let!(:u4fav3) { Favorite.create!(user_id: user4.id, book_id: books[9].id) }
    let!(:u5fav1) { Favorite.create!(user_id: user5.id, book_id: books.second.id) }
    let!(:u5fav2) { Favorite.create!(user_id: user5.id, book_id: books[9].id) }
    describe '.matches' do
      it 'filters users by favorites' do

        expect(user1.matches).to eq([user4, user5])
      end
    end
  end
end
