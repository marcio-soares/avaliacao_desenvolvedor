FactoryBot.define do
  factory :product do
    description { FFaker::Lorem.word }
    price { FFaker.numerify('#.##') }
    provider
  end
end
