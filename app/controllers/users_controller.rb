class UsersController < ApplicationController

    def index
        @users = User.all
        render({json: @users, include: :trails})
    end

    def show
        @user = User.find (params[:id])
        render({json: @user, include: :trails})
    end

end
