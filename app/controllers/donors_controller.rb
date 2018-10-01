class DonorsController < ApplicationController
  def index
    @donors = Donor.page(params[:page]).per(8)
  end
end
