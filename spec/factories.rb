FactoryGirl.define do

  sequence(:email) { |n| "person_#{n}@example.com" }
  sequence(:name) { |n| "Person #{n}" }

  factory :user do
    email
    name
    password "foobar"
  end

  factory :recipient do
    name
  end

  factory :present do
    user
    recipient
    sequence(:product) { |n| "Product #{n}" }
    cost 9.95
    store 'Amazon'
    purchased false
    delivered false
    given false
    split false
  end
end
