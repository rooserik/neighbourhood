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

  describe '#create' do
    it "creates review" do
    expect{
       post :create, :format => :json, review: FactoryGirl.attributes_for(:review, area_id: review.area.to_param), :area_id => review.area.id
     }.to change{Review.count}.by(1)
    end

    it "is invalid without a writer" do
       expect(FactoryGirl.build(:review, writer: nil)).to_not be_valid
    end

    it "is invalid without a story" do
       expect(FactoryGirl.build(:review, story: nil)).to_not be_valid
    end

    it "is invalid without a area_id" do
      expect(FactoryGirl.build(:review, area_id: nil)).to_not be_valid
    end
  end
end
