require 'rails_helper'

RSpec.describe Customer, type: :model do
  let(:customer) { create(:customer) }
  
  it 'created customer' do
    expect(customer.valid?).to be_truthy 
  end

  it 'have many orders' do
    expect(customer).to have_many(:orders)
  end 
end
