class PostsController < ApplicationController
  def index
    @posts = Post.all
  end



  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    @post.title = params[:post][:title]
    @post.body = params[:post][:body]

    if @post.save

      flash[:notice] = "Post was Saved"
      redirect_to @post

    else

      flash.now[:alert] = "There was an error saving post. Please try again!"
      render :new
    end

  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.title = params[:post][:title]
    @post.body = params[:post][:body]

    if @post.save
      flash[:notice] = "Post was Updated"
      redirect_to @post
    else
      flash.now[:alert] = "There was an error updating post. Please try again!"
      render :edit
    end

  end

end
