class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
    render json: @favorites, include: [:user, :trail]
  end

  def show
    @favorite = Favorite.find(params[:id])
    render json: @favorite , include: [:user, :trail]
  end

  def create
    @favorite = Favorite.create(
      user: params[:name],
      trail: params[:trail],
      has_skied: true)
    render json: @favorite, include: [:user, :trail]
  end

    )

  end
end
