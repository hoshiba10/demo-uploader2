class UsersController < ApplicationController
    
    def new
        @user = User.new
    end
    
    def create
        @user = User.new(user_params)
        @user.save
        redirect_to '/users/show', notice: '送信成功'
    end
    
    def show
        @user = User.all
    end
    
    private
    def user_params
        params.require(:user).permit(:name, :image)
    end
    
end
