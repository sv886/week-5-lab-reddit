class PostsController < ApplicationController
  def list
    @posts = Post.all.order("likes desc")
  end

  def detail
    @post = Post.find_by id: params[:id]
  end

  def upvote
    @post = Post.find_by id: params[:id]
    @post.update likes: (@post.likes + 1)
    redirect_to root_path
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end
end
