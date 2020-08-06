class ReservationsController < ApplicationController

  def index
    @reservations = Reservation.where(user_id: current_user.id)
  end

  def show
    set_reservation
  end

  def my_reservations
    @reservations = Reservation.all
    @my_reservations = []
    @reservations.each do |reservation|
      if reservation.user == current_user
        @my_reservations << reservation
      end
    end
    return @my_reservations
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @bike = Bike.find(params[:bike_id])
    @reservation.bike = @bike
    if @reservation.save
      redirect_to my_reservations_reservations_path, notice: 'Reservation was made'
    else
      render "new", notice: 'Oops... this reservation failed'
    end
  end

  def edit
    set_reservation
  end

  def update
    set_reservation
      if @reservation.update(reservation_params)
        redirect_to reservation_path(@reservation)
      else
        render "edit"
      end

  def destroy
    @reservation.destroy
    redirect_to bikes_path
  end

  end


   private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date)
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end
end

