class BikesController < ApplicationController
  before_action :set_bike, only: [:show, :edit, :update, :destroy]

  def index
    @bikes = Bike.all
  end

  def my_bikes
    @bikes = Bike.all
    @my_bikes = []
    @bikes.each do |bike|
      if bike.user == current_user
        @my_bikes << bike
      end
    end
    return @my_bikes
  end

  def show
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.user = current_user
    if @bike.save
      redirect_to bikes_path, notice: 'bike was successfully created.'
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
    params.require(:bike).permit(:title, :description, :price, :location, photos: [])
  end
end

