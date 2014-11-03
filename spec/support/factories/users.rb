FactoryGirl.define do
  factory :user, :class => UserMaintenance::User do
    email 'user@example.com'
    password 'password'
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    role :user
  end

  factory :admin, :parent => :user do
    email 'admin@example.com'
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    role :admin
  end

  factory :valid_user, :parent => :user do
    sequence(:email) { |n| "user#{n}@example.com" }
  end

  factory :valid_admin, :parent => :admin do
    sequence(:email) { |n| "admin#{n}@example.com" }
  end

  factory :invalid_user, :class => UserMaintenance::User do
    email nil
    first_name nil
    last_name nil
    password '123'
  end
end
