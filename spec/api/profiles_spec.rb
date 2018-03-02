require 'spec_helper'

describe 'Profiles API'
  describe "GET #index" do
      it "returns a success response" do
        profile = Profile.create! valid_attributes
        get :index, params: {}, session: valid_session
        expect(response).to be_success
      end
    end

    describe "GET #show" do
      it "returns a success response" do
        profile = Profile.create! valid_attributes
        get :show, params: {id: profile.to_param}, session: valid_session
        expect(response).to be_success
      end
    end
  end
