class UsersController < ApplicationController
  def show
  end

  def new
  end

  def create
    redirect_to prototypes_latest_index_path
  end

  def edit
  end

  def sign_in
  end
  private
  def create_params
  end
end
