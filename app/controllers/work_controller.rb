class WorkController < ApplicationController
  def index
    @work = Work.all
  end

  def show
    @work = Work.find(params[:id])
  end
end
