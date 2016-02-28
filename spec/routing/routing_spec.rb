require 'rails_helper'

RSpec.describe ReviewsController, type: :routing do
  area = FactoryGirl.create(:area)
  describe "routing" do

    it "routes to #index of areas" do
      expect(:get => "/areas").to route_to("areas#index")
    end
    
  end

end
