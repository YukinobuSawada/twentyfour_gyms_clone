FactoryBot.define do
  factory :user do
    name{"yamada"}
    sequence(:email){ |n| "hiro#{n}@example.com"}
    password{"password"}
  end
end
