class WorksController < ApplicationController
  def index
    @work = Work.page(params[:page]).per(9)
  end

  def show
    @work = Work.find(params[:id])
  end
end
