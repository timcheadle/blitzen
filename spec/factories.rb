FactoryGirl.define do

  sequence(:email) { |n| "person_#{n}@example.com" }
  sequence(:name) { |n| "Person #{n}" }

  factory :user do
    email
    name
    password "foobar"
  end
end
