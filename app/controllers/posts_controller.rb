class PostsController < ApplicationController

  def index
    # show all posts
    @posts = Post.all
  end

  def new
    #form for creating a new post

  end

  def create
    #create a new post
    @new_post = Post.create(params[:post])

  end

  def show
    #show a specific post
    #/
    @post = Post.find_by_id(params[:id])

  end


end
