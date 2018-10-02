class DonorsController < ApplicationController
  def index
    @donors = Donor.page(params[:page]).per(8)
    @donors = Donor.search_for(params[:search]).page(params[:page]).per(8)
  end
end
