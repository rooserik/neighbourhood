require 'rails_helper'

RSpec.describe ReviewsController, type: :controller do
  review=FactoryGirl.create(:review)

  describe 'reviews#index' do
    it "gets reviews index" do
      get :index, :format => :json, :area_id => review.area.id
      expect(response).to be_success
    end
  end

  describe '#new' do
    it "gets new_review" do
      get :new, :format => :json, :area_id => review.area.id
      expect(response).to be_success
    end
  end
end
