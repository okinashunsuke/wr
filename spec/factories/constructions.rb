FactoryBot.define do
  factory :construction do
    name     {Faker::Lorem.sentence}
    place    {Faker::Lorem.sentence}
    price    {5000000000}
    user_id  {2}
    schedule {2}
    doing    {"施行中"}
  end
end