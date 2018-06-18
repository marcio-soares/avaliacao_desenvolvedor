FactoryBot.define do
  factory :provider do
    name { FFaker::Lorem.word }
    address { FFaker::Lorem.word }
  end
end
