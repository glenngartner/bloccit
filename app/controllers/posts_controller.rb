class PostsController < ApplicationController
  def index
    @posts = Post.all
    # Write over the first, and every fifth post with "Spam"
    @posts.each_with_index do |post, index|
      index += 1
      if index == 1 || index % 5 == 0
        post.update(title: "SPAM")
      end
    end
  end

  def show
  end

  def new
  end

  def edit
  end
end
