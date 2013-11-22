class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @user = User.find(session[:id])
    @comment = @post.comments.create(params[:comments])

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

