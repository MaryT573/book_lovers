FactoryBot.define do
  factory :book do
    title { Faker::Book.title }
    summary { Faker::Book.author }
    author { Faker::Number.within(range: 18..60) }
    publish_date { Faker::Date.backward(days: 25_550) }
  end
end
