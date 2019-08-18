require 'rails_helper'

RSpec.describe CampaignsController, type: :controller do

  include Devise::Test::ControllerHelpers

  before(:each) do
    @request.env["devise.mapping"] = Devise.mapping[:user]
    @current_user = FactoryBot.create(:user)
    sign_in @current_user
  end

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #create" do
    it "returns http success" do
      get :create
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #update" do
    it "returns http success" do
      get :update
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #destroy" do
    it "returns http success" do
      get :destroy
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #raffle" do
    it "returns http success" do
      get :raffle
      expect(response).to have_http_status(:success)
    end
  end

end
