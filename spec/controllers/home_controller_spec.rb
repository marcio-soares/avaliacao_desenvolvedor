require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe 'POST upload' do
    context do
      before(:each) do
        @file = fixture_file_upload('dados.txt', 'text/plain')
      end
      it {
          post(:upload, params: { upload_file: @file } )
          expect(response.status).to be_eql 302
      }
    end
  end
end
