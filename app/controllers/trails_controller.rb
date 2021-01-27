class TrailsController < ApplicationController

  def index
    @trails = Trail.all
    render json: @trails, include: :user
  end

  def show
    @trail = Trail.find(params[:id])
    render json: @trail, include: :user
  end
end


