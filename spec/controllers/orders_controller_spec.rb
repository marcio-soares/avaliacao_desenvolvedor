require 'rails_helper'

RSpec.describe OrdersController, type: :controller do
  describe 'POST upload' do
    context do
      it {
          get :index
          expect(response.status).to be_eql 200
      }
    end
  end
end