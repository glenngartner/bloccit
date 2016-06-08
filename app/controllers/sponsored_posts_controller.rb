class SponsoredPostsController < ApplicationController
  def show
    @sponsored_post = SponsoredPost.find(params[:id])
  end

  def new
    @sponsored_post = SponsoredPost.new
  end

  def edit
    @sponsored_post = SponsoredPost.find(params[:id])
  end

  def update
    @sponsored_post = SponsoredPost.find(params[:id])
    @sponsored_post.title = params[:title]
    @sponsored_post.body = params[:body]

    if @sponsored_post.save
      flash[:notice] = "Sponsored Post was updated successfully."
      redirect_to [@sponsored_post]
    else
      flash.new[:alert] = "There was an error saving the post. Please try again."
      render :edit
    end
  end
end
#
# class TopicsController < ApplicationController
#   def index
#     @topics = Topic.all
#   end
#
#   def show
#     @topic = Topic.find(params[:id])
#   end
#
#   def new
#     @topic = Topic.new
#   end
#
#   def create
#     @topic = Topic.new
#     @topic.name = params[:topic][:name]
#     @topic.description = params[:topic][:description]
#     @topic.public = params[:topic][:public]
#
#     if @topic.save
#       flash[:notice] = "Topic was saved successfully."
#       redirect_to @topic
#     else
#       flash.now[:alert] = "Error creating topic. Please try again."
#       render :new
#     end
#   end
#
#   def edit
#     @topic = Topic.find(params[:id])
#   end
#
#   def update
#     @topic = Topic.find(params[:id])
#
#     @topic.name = params[:topic][:name]
#     @topic.description = params[:topic][:description]
#     @topic.public = params[:topic][:public]
#
#     if @topic.save
#       flash[:notice] = "Topic was updated successfully."
#       redirect_to @topic
#     else
#       flash.now[:alert] = "Error saving topic. Please try again."
#       render :edit
#     end
#   end
#
#   def destroy
#     @topic = Topic.find(params[:id])
#
#     if @topic.destroy
#       flash[:notice] = "\"#{@topic.name}\" was deleted successfully."
#       redirect_to action: :index
#     else
#       flash.now[:alert] = "There was an error deleting the topic."
#       render :show
#     end
#   end
#
# end
