FactoryBot.define do
  factory :user do
    fullname { Faker::Name.name }
    sequence(:email) { |n| "nguyen.van.a+#{n}@sun-asterisk.com" }
  end
end
