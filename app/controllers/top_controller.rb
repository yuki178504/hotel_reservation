class TopController < ApplicationController
  def page
    @user = current_user
  end
end
