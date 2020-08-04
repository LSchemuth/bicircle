class BikesController < ApplicationController
  before_action :set_bike, only: [:show, :edit, :update, :destroy]

  def index
    @bikes = Bike.all
  end

  def show
  end

  def new
    @bike = Bike.new
  end
    
  def create
    @bike = Bike.new(bike_params)
    if @bike.save
      redirect_to @bike, notice: 'bike was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @bike.update(bike_params)
      redirect_to @bike, notice: 'bike was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @bike.destroy
    redirect_to bikes_url, notice: 'bike was successfully deleted.'
  end


  private

  def set_bike
    @bike = Bike.find(params[:id])
  end


  def bike_params
    params.require(:bike).permit(:title, :description, :price, :location, :user_id)
  end
end