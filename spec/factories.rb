FactoryGirl.define do
  factory :trainee, class: Trainee do
    sequence(:first_name) { Faker::Name.first_name }
    sequence(:last_name) { Faker::Name.last_name }
    sequence(:birthday) { Date.today.to_date }
    sequence(:year) { Faker::Number.digit }
    sequence(:email) { Faker::Internet.email }
    sequence(:phone) { Faker::PhoneNumber.phone_number }
    sequence(:suse_login) { Faker::Internet.user_name(%w(. _ -)) }
    sequence(:github) { Faker::Internet.user_name }
    sequence(:trello) { Faker::Internet.user_name }
    sequence(:description) { Faker::Lorem.paragraph }
  end
end
