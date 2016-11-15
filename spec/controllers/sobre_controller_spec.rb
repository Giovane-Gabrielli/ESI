require 'rails_helper'

RSpec.describe SobreController, :type => :controller do

  describe "GET sobre_jubilator" do
    it "returns http success" do
      get :sobre_jubilator
      expect(response).to be_success
    end
  end

end
