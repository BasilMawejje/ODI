class GoverningBoardController < ApplicationController
  def index
    @governingboard = GoverningBoard.all
  end

  def show
    @governingboard = GoverningBoard.find(params[:id])
  end
end
