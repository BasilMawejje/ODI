class HomeController < ApplicationController
  def index
    @work = Work.all.limit(3)
    @donors = Donor.all.limit(4)
    @latest_news = LatestNews.all.limit(1)
    @partners = Partner.all
  end
end
