class UsersController < ApplicationController

  def index
    render json: User.all
  end

  def show
    render json: User.find_by(id: params[:id]), include: :items
  end


  def item_show
    user = User.find(params[:id])
    item = Item.find(params[:id])
    render json: user, include: item
  end

end
