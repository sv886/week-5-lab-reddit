class PostsController < ApplicationController
  def list
    @posts = Post.all.order("likes desc")
  end

  def detail
    @post = Post.find_by id: params[:id]

    # @comment = Comment.new
    # @comment.post = @post
  end

  def create_comment
    #get record
    @post = Post.find_by id: params[:id]
    @comment = Comment.new

    @comment.body = params[:comment][:body]
    @comment.post_id = @post.id
    @comment.user_id = @user.id
    # save it
    if @comment.save
      redirect_to post_path(id: @post.id)
    else
      render :detail
    end
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
    @post = Post.find_by id: params[:id]
    @post.destroy
    # redirect to "/"
    redirect_to root_path
  end
end
