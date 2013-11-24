class CommentsController < ApplicationController
  include ApplicationHelper
  
  def new
    @comment = Comment.new
  end

  def create
    @comment = current_user.comments.create(text: params[:comment][:text])
    @comment.update_attribute(:post_id, params[:post_id])
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
    if current_user.class.inspect == "SocialMediaUser"
      comment.votes.create(value:1, social_media_user_id: current_user.id)
    else
      comment.votes.create(value:1, user_id: current_user.id)
    end
    redirect_to post_path(comment.post)
  end
  
  def downvote
    comment = Comment.find(params[:id])
    if current_user.class.inspect == "SocialMediaUser"
      comment.votes.create(value:-1, social_media_user_id: current_user.id)
    else
      comment.votes.create(value:-1, user_id: current_user.id)
    end
    redirect_to post_path(comment.post)
  end
end

