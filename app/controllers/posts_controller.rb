class PostsController < ApplicationController
  include ApplicationHelper

  def index
    # show all posts
    @posts = Post.all
  end

  def show
    #show a specific post
    @post = Post.find_by_id(params[:id])
    if @post.user == nil
      @social_media_user = true
    end
  end

  def new
    #form for creating a new post
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
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

  def update
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url }
      format.json { head :no_content }
    end
  end
end
