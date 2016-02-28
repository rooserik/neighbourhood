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

  describe '#update'do
    it "updates area" do
      area
      put :update, :format => :json, id: area.id, :area => { :name => "new name"}
      area.reload
      expect(area.name).to eq("new name")
    end
  end

  describe '#delete'do
    it "deletes area"do
      area
      expect{delete :destroy, :format => :json, id: area.id}.to change{Area.count}.by(-1)
    end
  end


  describe '#show'do
    it "shows area"do
      area
      get :show, :format => :json, id: area.id
      expect(response).to be_success
    end
  end

  
end
