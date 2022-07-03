class TopController < ApplicationController
  def page
    @q = Register.ransack(params[:q])
  end
end
