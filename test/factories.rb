FactoryGirl.define do
  factory :user, class: User do
    sequence(:email, 25) {
      |n| "person#{n}@example.com"
    }
    password "12345678"
  end
end
