class HomeController < ApplicationController
  def index
    @work = Work.all.limit(4)
    @donors = Donor.all.limit(4)
    @board_of_trustees = BoardOfTrustee.all.limit(4)
    @latest_news = LatestNews.all.limit(4)
  end
end
