class SearchController < ApplicationController
  def index 
	words = params[:q].split
    @posts = Post.basic_search(words)
    
  
  
  
  
  end
end
