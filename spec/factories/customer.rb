FactoryBot.define do
  factory :customer do
    name { FFaker::Lorem.word }
  end
end
