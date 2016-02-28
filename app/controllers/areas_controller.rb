class AreasController < ApplicationController

  def index
    render json:{
      areas: Area.order(id: :desc)
    }
  end
end
