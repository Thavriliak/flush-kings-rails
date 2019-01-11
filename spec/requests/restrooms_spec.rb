require 'rails_helper'

RSpec.describe "Restrooms", type: :request do
  describe "GET /restrooms" do
    it "works! (now write some real specs)" do
      get restrooms_path
      expect(response).to have_http_status(200)
    end
  end
end
