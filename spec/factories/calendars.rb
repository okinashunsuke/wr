FactoryBot.define do
  factory :calendar do
    construction_id {2}
    user_id         {2}
    dconst_type     {Faker::Lorem.sentence}
    company         {Faker::Lorem.sentence}
    n_o_p           {５}
    day             {2020-12-10}
  end
end