class UsersController < ApplicationController
  def show
    @prototypes = current_user.prototypes.page(params[:page]).per(10)
  end
end


