class DonorsController < ApplicationController
  def index
    @donors = Donor.all
  end

  def show
    @donors = Donor.find(params[:id])
  end
end
