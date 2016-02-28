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

  describe '#create'do
    it "creates area" do
      expect{post :create, :format => :json, area: FactoryGirl.attributes_for(:area)}.to change{Area.count}.by(1)
    end
  end

  describe '#edit' do
    it "gets edit_area" do
      area
      get :edit, :format => :json, id: area.id
      expect(response).to be_success
    end
  end

end
