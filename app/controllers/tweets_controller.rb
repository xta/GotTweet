class TweetsController < ApplicationController

  def index
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.find_or_create_twitter_id(current_user, params[:tweet][:twitter_id])

    respond_to do |format|
      if @tweet
        format.html { redirect_to(@tweet) }
      else
        format.html { render :action => "index" }
      end
    end
  end

  def show
    @tweet = Tweet.find(params[:id])
  end
  
end
