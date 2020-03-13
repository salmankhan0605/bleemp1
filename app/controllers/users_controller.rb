class UsersController < ApplicationController
def create
    
  end
  
  def show
    @user = User.find(params[:id])
    @posts = @user.posts
	@lat = @user.lat
	@lng = @user.lng
	@nearby_users = User.near([@lat, @lng], 4000)
	render json: @nearby_users.posts
  end

  def update
    
  end

  def edit
    
  end

  def destroy
    
  end

  def new
    
  end

  def index
    
  end




end
