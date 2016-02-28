class AreasController < ApplicationController

  def index
    render json:{
      areas: Area.order(id: :desc)
    }
  end

  def new
    render json:{area: Area.new}
  end

  def create
    if area=Area.create(area_params)
    render json:{area: area}
    else
      render json: {
        message: "Sorry, area could not be created",
        errors: area.errors
      }
    end
  end

  def edit
    render json:{area: Area.find(params[:id])}
  end

  def update
    if area=Area.find(params[:id])
    render json:{area: area.update(area_params)}
    else
      render json: {
        message:"Sorry, area could not be edited",
        errors: area.errors
      }
    end
  end

  def destroy
    area=Area.find(params[:id])
    area.destroy
    render json: { destroyed: true }
  end


  def show
    area=Area.find(params[:id])
    render json:{area: area}
  end

  private
  def area_params
    params.require(:area).permit(:name, :description)
  end
end
