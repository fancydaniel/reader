class FeedsController < ApplicationController

  def index
    @feeds = Feed.all
    @feed = Feed.new
  end

  def show
    @feed = Feed.find(params[:id])
    @title = @feed.feed_title
    @entries = @feed.entries
  end

  def new 
    @feed = Feed.new
  end

  def create
    @feed = Feed.new(feed_params)
    if @feed.save
      redirect_to feeds_path
    else
      redirect_to feeds_path
    end
  end

  private

  def feed_params
    params.require(:feed).permit(:name, :url)
  end

end