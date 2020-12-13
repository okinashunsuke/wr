FactoryBot.define do
  factory :construction do
    name     {"都庁"}
    place    {"新宿"}
    price    {5000000000}
    schedule {2020/12}
    doing    {"施行中"}
    association :user
  end
end