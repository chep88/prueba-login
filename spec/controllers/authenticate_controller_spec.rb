require 'rails_helper'

RSpec.describe AuthenticateController, type: :controller do
  context 'method autenticate' do
    describe 'login' do
      let(:user_quilicura){Faker::Internet.email}
      let(:user_lasCondes){Faker::Internet.email}
      let(:pass_quilicura){"#{Faker::Internet.email}#{Faker::Name.name}" }
      let(:pass_lasCondes){"#{Faker::Internet.email}#{Faker::Name.name}" }
      it 'validate user' do
        post '/authenticate/login'
        print response
        expect(response).should eq([{:suc=>"Quilicura"}])
        #expect {
        #    post :login, user_quilicura:user, pass_quilicura:pass
        #}.should eq([{:suc=>"Quilicura"}])

      end

      it do
        expect {
            post :login, user_lasCondes:user, pass_lasCondes:pass
        }.should eq([{:suc=>"LasCondes"}])
      end
    end
  end
end
