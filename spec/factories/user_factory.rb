FactoryGirl.define do
  sequence(:email) {|n| "user#{n}@example.com" }

  factory :user do
    name "maroo"
    email { generate(:email) }

    password "123456"
    password_confirmation "123456"
    factory :admin_user do
      admin true

    end
  end
end