require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      visit '/login'
      expect(response).to have_http_status(:success)
    end
  end

end
