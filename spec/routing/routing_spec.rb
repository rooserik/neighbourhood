require 'rails_helper'

RSpec.describe ReviewsController, type: :routing do
  area = FactoryGirl.create(:area)
  review = FactoryGirl.create(:review)
  describe "routing" do

    it "routes to #index of areas" do
      expect(:get => "/areas").to route_to("areas#index")
    end

    it "routes to #show of area" do
      expect(:get => "/areas/1").to route_to("areas#show", id:'1')
    end

    it "routes to #create of area" do
      expect(:post => "/areas").to route_to("areas#create")
    end

    it "routes to #edit of area" do
      area
      expect(:get => "/areas/1/edit").to route_to("areas#edit", id:'1')
    end

    it "routes put update of area" do
      area
      expect(:put => "/areas/1").to route_to("areas#update", id: '1')
    end

    it "routes to #new area" do
      expect(:get => "/areas/new").to route_to("areas#new")
    end

    it "routes to #delete of area" do
      area
      expect(:delete => "/areas/1").to route_to("areas#destroy", id: '1')
    end

    it "routes to #index of reviews" do
      expect(:get => "/areas/1/reviews").to route_to("reviews#index", area_id: '1')
    end

    it "routes to #create of reviews" do
      expect(:post => "/areas/1/reviews").to route_to("reviews#create", area_id: '1')
    end

    it "routes to #edit of reviews" do
      area
      expect(:get => "/areas/1/reviews/1/edit").to route_to("reviews#edit", area_id:'1', id: '1')
    end

    it "routes put update of reviews" do
      area
      expect(:put => "/areas/1/reviews/1").to route_to("reviews#update", area_id:'1', id: '1')
    end

    it "routes to #new of reviews" do
      expect(:get => "/areas/1/reviews/new").to route_to("reviews#new", area_id:'1')
    end

    it "routes to #delete reviews" do
      area
      expect(:delete => "/areas/1/reviews/1").to route_to("reviews#destroy", area_id:'1',id: '1')

    end


  end
end
