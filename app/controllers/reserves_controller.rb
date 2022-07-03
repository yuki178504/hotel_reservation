class ReservesController < ApplicationController

  def index
    @registers = Register.all
    @reserves = Reserve.all
  end

  def new
  end

  def confirm
    @reserve = Reserve.new(reserve_params)
    @day = (@reserve.end_date - @reserve.starte_date).to_i
    @sum = (@reserve.price * @reserve.number_people).to_i
    
  end

  def create
    @reserve = Reserve.new(reserve_params)
    if @reserve.save
      redirect_to :reserves
    else
      render "confirm"
      
    end
  end
  

  private
    def reserve_params
      params.require(:reserve).permit(:starte_date, :end_date, :number_people, :register_id, :name, :introduction, :price, :address, :avatar_path, :total)
    end
      
end
