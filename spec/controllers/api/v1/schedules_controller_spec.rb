require 'rails_helper'

RSpec.describe Api::V1::SchedulesController, type: :controller do

  describe "GET #index" do
    it "正常系ステータスを返す" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "" do
      FactoryBot.create_list(:post, 10)
      get :index

    end

  end

  # describe "GET #show" do
  #   it "returns http success" do
  #     get :show
  #     expect(response).to have_http_status(:success)
  #   end
  # end
  #
  # describe "GET #create" do
  #   it "returns http success" do
  #     get :create
  #     expect(response).to have_http_status(:success)
  #   end
  # end
  #
  # describe "GET #update" do
  #   it "returns http success" do
  #     get :update
  #     expect(response).to have_http_status(:success)
  #   end
  # end
  #
  # describe "GET #destroy" do
  #   it "returns http success" do
  #     get :destroy
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end
