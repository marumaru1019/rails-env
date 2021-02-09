class Api::UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @artists = User.where(id: params[:id])
  end
end
