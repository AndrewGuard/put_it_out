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
end

