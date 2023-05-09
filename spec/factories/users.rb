FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    age { Faker::Number.within(range: 18..60) }
    gender { %w[male female nonbinary].sample }
    email { Faker::Internet.unique.safe_email(name: "#{first_name}_#{last_name}") }
    password { 'password' }
    password_confirmation { 'password' }
  end
end
