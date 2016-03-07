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

  def downvote
    @post = Post.find_by id: params[:id]
    @post.update likes: (@post.likes - 1)
    redirect_to root_path
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    @post.title = params[:post][:title]
    @post.url = params[:post][:url]
    @post.user_id = params[:post][:user_id]

    if @post.save
      # redirect to "root"
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def delete
  end
end
