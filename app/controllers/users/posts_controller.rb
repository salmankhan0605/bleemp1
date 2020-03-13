class PostsController < ApplicationController
  def create
    
  end
  
  def show
    @post = Post.find (params[:post_id])
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
    @posts = User.find(params[:user_id]).posts
	
  end
end
