require 'rails_helper'

RSpec.describe "Writings", type: :request do
  describe "GET /writings" do
    it "works! (now write some real specs)" do
      get writings_path
      expect(response).to have_http_status(200)
    end
  end
end
