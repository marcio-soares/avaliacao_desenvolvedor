FactoryBot.define do
  factory :order do
    quantity { FFaker::Random.rand(0..1000) }
    product
    customer
  end
end
