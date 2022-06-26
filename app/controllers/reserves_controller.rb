class ReservesController < ApplicationController
  def index
    @registers = Register.all
    @reserves = Reserve.all
  end

  def new
  end

  def confirm
    @reserve = Reserve.new(reserve_params)
    
  end

  def create
    
  end

  private
    def reserve_params
      params.require(:reserve).permit(:start_date, :end_date, :number_people, :register_id, :name, :introduction, :price, :address, :avatar_path)
      
    end
end
