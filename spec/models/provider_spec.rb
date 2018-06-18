require 'rails_helper'

RSpec.describe Provider, type: :model do
  let(:provider) { create(:provider) }

  it 'created provider' do
    expect(provider.valid?).to be_truthy
  end

  it 'has mnay products' do
    expect(provider).to have_many(:products)
  end
end
