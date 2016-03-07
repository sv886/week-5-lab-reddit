class CommentController < ApplicationController
  def list
  end

  def detail
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new
    @comment.body = params[:comment][:body]

    if @comment.save
      # redirect to "root"
      redirect_to post_path
    else
      render :new
    end
  end

  def delete
  end
end
