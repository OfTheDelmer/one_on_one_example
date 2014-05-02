class PostsController < ApplicationController

  def index
    @posts = Post.all
    render :index
  end

  def new
    @post = Post.new
    render :new
  end

  def create
    new_post = params.require(:post).permit(:title, :body)
    post = Post.create(new_post)
    redirect_to post
  end


  def show
    @post = Post.find(params[:id])
    render :show
  end

  def edit
    @post = Post.find(params[:id])
    render :edit
  end

  def update
    post = Post.find(params[:id])
    post_params = params.require(:post).permit(:title, :body)
    post.update_attributes(post_params)
    redirect_to post
  end


end
