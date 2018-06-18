require 'rails_helper'

RSpec.describe Order, type: :model do
  let(:order) { create(:order) }

  it 'created order' do
    expect(order.valid?).to be_truthy
  end

  it 'belongs to product' do
    expect(order).to belong_to(:product) 
  end

  it 'belongs to customer' do
    expect(order).to belong_to(:customer) 
  end
end
