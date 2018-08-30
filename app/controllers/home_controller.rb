class HomeController < ApplicationController
  def index
    @work = Work.all.limit(4)
    @donors = Donor.all.limit(4)
    @latest_news = LatestNews.all.limit(1)
    @countries = CS.get

    # Added models without limit for facts counter
    @donor = Donor.all
    @work = Work.all
    @latest_news = LatestNews.all
    @countries = CS.get
  end
end
