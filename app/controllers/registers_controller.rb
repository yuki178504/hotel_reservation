class RegistersController < ApplicationController
  

  def index
    @registers = Register.all
  end

  def new
    @register = Register.new
  end

  def create
    @register = Register.new(params.require(:register).permit(:avatar_path, :name, :introduction, :price, :address))
    if @register.save
      redirect_to :registers
    else
      render "new"
    end
  end

  def show
    @register = Register.find(params[:id])
    @reserve = Reserve.new
  end

end
