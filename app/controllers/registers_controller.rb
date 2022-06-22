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
      redirect_to top_page_path
    else
      render "new"
    end
  end

end
