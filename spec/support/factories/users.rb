FactoryGirl.define do
  factory :user, :class => UserMaintenance::User do
    sequence(:email) { |n| "user#{n}@example.com" }
    password 'password'
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    roles_mask UserMaintenance::User.mask_for([:user].sample)
  end

  factory :admin, :parent => :user do
    email 'admin@example.com'
    roles_mask UserMaintenance::User.mask_for(:admin)
  end
end
