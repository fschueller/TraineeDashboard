FactoryGirl.define do
  factory :trainee, class: Trainee do
    sequence(:first_name) { Faker::Name.first_name }
    sequence(:last_name) { Faker::Name.last_name }
    sequence(:birthday) { Faker::Date.birthday }
    sequence(:year) { 1 }
    sequence(:email) { Faker::Internet.email }
    sequence(:phone) { Faker::PhoneNumber.phone_number }
    sequence(:suse_login) { Faker::Internet.user_name(%w(. _ -)) }
    sequence(:github) { Faker::Internet.user_name }
    sequence(:trello) { Faker::Internet.user_name }
    sequence(:description) { Faker::Lorem.paragraph }
    sequence(:remote_image_url) { Faker::Avatar.image }
  end
end
