FactoryBot.define do
  factory :user do
    name{"yamada"}
    sequence(:email){ |n| "yamada#{n}@example.com"}
    password{"password"}
  end
end
