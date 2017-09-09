class DestinationsController < ApplicationController
  def index
    @destinations = Destination.all
  end

  def show
    @destination = Destination.find(params[:id])
  end

  def new
    @destination = Destination.new
  end

  def create
    @destination = Destination.new(destinations_params)
 
    if @destination.save
      redirect_to root_path
    else
      render :new
    end
  end
 
  def edit
    @destination = Destination.find(params[:id])
  end

  def update
    @destination = Destination.find(params[:id])
  
    if @destination.update(destinations_params)
      redirect_to destination_path
    else
      render :edit
    end
  end

  def destroy
    Destination.find(params[:id]).destroy
    redirect_to root_path
  end

  private
 
    def destinations_params
      params.require(:destination).permit(:title)
    end
end
