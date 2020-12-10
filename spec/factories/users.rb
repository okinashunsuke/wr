FactoryBot.define do
  factory :user do
    user_name             {Faker::Name.name}
    email                 {Faker::Internet.free_email}
    password              {"123abc"}
    password_confirmation {password}
    position              {"課長"}
  end
end