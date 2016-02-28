require 'rails_helper'

RSpec.describe AreasController, type: :controller do
area = FactoryGirl.create(:area)

  describe 'areas#index'do
    it 'gets areas index' do
      get :index, :format => :json
      expect(response).to be_succes
    end
  end

  describe '#new' do
    it "gets new_area" do
      get :new, :format => :json
      expect(response).to be_success
    end
  end
end
