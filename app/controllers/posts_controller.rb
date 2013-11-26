class PostsController < ApplicationController
  include ApplicationHelper

  def index
    # show all posts
   @posts = Post.get_posts
    # @posts = Post.all
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

  def upvote
    post = Post.find(params[:id])
    if current_user.class.inspect =="SocialMediaUser"
      post.votes.create(value:1, social_media_user_id: current_user.id)
    else
      post.votes.create(value:1, user_id: current_user.id)
    end
    respond_to do |format|
      format.js do
        render partial: 'vote_count', layout: false, locals: {:vote_count => post.vote_count}
      end
      format.any do
        redirect_to post_path
      end
    end
  end

  def downvote
    post = Post.find(params[:id])
    if current_user.class.inspect =="SocialMediaUser"
      post.votes.create(value:-1, social_media_user_id: current_user.id)
    else
      post.votes.create(value:-1, user_id: current_user.id)
    end
    respond_to do |format|
      format.js do
        render partial: 'vote_count', layout: false, locals: {:vote_count => post.vote_count}
      end
      format.any do
        redirect_to post_path
      end
    end
  end
end
