class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment= Comment.(params[:comment])

      if @comment
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

