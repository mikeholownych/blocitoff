# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence(:name) { |i| "Mike#{i}" }
    sequence(:email) { |i| "testuser#{i}@domain.com" }
    password "password"
    password_confirmation "password"

    factory :ben do
      name "Mike"
      email "mike@test.com"
      password "password"
      password_confirmation "password"
    end
  end
end
