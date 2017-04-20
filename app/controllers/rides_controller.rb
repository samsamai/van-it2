class RidesController < ApplicationController
      
    before_action :authenticate_user!
    before_action :find_ride, only: [:edit, :update, :destroy]
  
  def index
    @rides = Ride.all
  end

  def edit
   
  end
  
  def update
    @rides.update(ride_params)
    redirect_to rides_path
  end

  def new
    @rides = Ride.new
  end
  
  def create
    @rides = Ride.new(ride_params)
    if @rides.save
      redirect_to rides_path
    else
      render 'new'
    end
  end
  
  private 
  
  def find_ride
    @rides = Ride.find(params[:id])
  end
  
  def ride_params
    params.require(:ride).permit(
      :pickup_pt,
      :destination_pt,
      :driver,
      :rider,
      :coupon,
      :fare,
      :item_description,
      :max_dimensions,
      :max_weight,
      :help_needed,
      :start_time,
      :end_time,
      :need_insurance,
      :item_photo)
  end
  
end


