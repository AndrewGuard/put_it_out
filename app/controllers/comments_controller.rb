class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create


    @post = Post.find(params[:post_id])
    @comment = Comment.create(params[:comments])
    @post.comments << @comment

      if @comment.valid?
        redirect_to :back
      else
        flash[:error] = "Your comment is uncool"
      end
  end

    def show
      @comment = Comment.find(params[:id])
      respond_with @comment
    end
end

