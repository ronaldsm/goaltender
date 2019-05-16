require 'rails_helper'

RSpec.describe "Cores", type: :request do
  describe "GET /cores" do
    it "works! (now write some real specs)" do
      get cores_path
      expect(response).to have_http_status(200)
    end
  end
end
