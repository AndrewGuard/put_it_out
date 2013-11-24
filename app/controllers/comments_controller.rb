class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(text: params[:comment][:text])
    @comment.update_attribute(:provider, session[:provider])
    @comment.update_attribute(:user_id, session[:id])
    @comment.update_attribute(:post_id, params[:post_id])
    if session[:provider] == "facebook"
      @comment.social_media_user_id = session[:id]
    end
      if @comment.valid?
        redirect_to :back
      else
        flash[:error] = "Your comment is uncool"
      end
  end

  def show
   @comment = Comment.find(params[:id])
  end

  def upvote
    comment = Comment.find(params[:id])
    comment.votes.create(value:1)
    redirect_to comments_path(@post)
  end
  
  def downvote
    comment = Comment.find(params[:id])
    comment.votes.create(value:-1)
    redirect_to comments_path(@post)
  end
end

