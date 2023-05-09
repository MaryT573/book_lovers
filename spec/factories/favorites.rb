FactoryBot.define do
  factory :favorite do
    user { create(:user) }
    book { ceate(:book) }
  end
end
