require 'rails_helper'

RSpec.describe CombinacoesController, :type => :controller do

  describe "GET combinacoes" do
    it "returns http success" do
      get :combinacoes
      expect(response).to be_success
    end
  end

end
