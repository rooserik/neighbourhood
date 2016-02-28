class AreasController < ApplicationController

  def index
    render json:{
      areas: Area.order(id: :desc)
    }
  end

  def new
    render json:{area: Area.new}
  end
  
end
