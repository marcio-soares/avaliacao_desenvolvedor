require 'rails_helper'

RSpec.describe Product, type: :model do
  let(:product) { create(:product) }

  it 'created product' do
    expect(product.valid?).to be_truthy
  end

  it 'belongs to provider' do
    expect(product).to belong_to(:provider)
  end

  it 'have many orders' do
    expect(product).to have_many(:orders)
  end  
end
