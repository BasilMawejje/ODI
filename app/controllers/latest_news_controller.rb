class LatestNewsController < ApplicationController
  def index
    @latest_news = LatestNews.all
  end

  def show
    @latest_news = LatestNews.find(params[:id])
  end
end
