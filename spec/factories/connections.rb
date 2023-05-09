FactoryBot.define do
  factory :connection do
    time { Faker::Time.forward(days: 30,  period: :evening, format: :long) }
    date { ("#{time}").split(', ').first }
    user { create(:user) }
    friend { create(:user) }
  end
end
