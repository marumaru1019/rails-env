class PageController < ApplicationController
  def index
    @users = User.all
  end
end
