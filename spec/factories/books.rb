FactoryBot.define do
  factory :book do
    title { Faker::Book.title }
    summary { Faker::Lorem.paragraph }
    author { Faker::Book.author }
    publish_date { Faker::Date.backward(days: 25_550) }
  end
end
