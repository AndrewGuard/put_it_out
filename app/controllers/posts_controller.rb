
class PostsController < ApplicationController
  include ApplicationHelper

  def index
    # show all posts
    @posts = Post.all
  end

  def new
    #form for creating a new post
    @post = Post.new
  end

  def create
    #create a new post
    @post = Post.create(params[:post])
    current_user.posts << @post
    if @post.valid?
      redirect_to posts_path
    else
    #   flash[:error] = "Enter a title and body"
      render :new
    end

  end

  def show
    #show a specific post
    @post = Post.find_by_id(params[:id])
  end
end
