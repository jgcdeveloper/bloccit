class PostsController < ApplicationController

  def spamFilter(posts,filtered)
    posts.each_with_index do |mypost, index|
      if (index > 1 && index % filtered == 0)
        mypost.title = 'SPAM Post'
      end
    end
  end

  def index
    @posts = Post.getAllPosts

    @filterPosts = 5

    spamFilter(@posts, @filterPosts)

  end

  def show
  end

  def new
  end

  def edit
  end
end
