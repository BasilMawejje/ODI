class BoardOfTrusteesController < ApplicationController
  def index
    @board_of_trustees = BoardOfTrustee.all
    @governingboard = GoverningBoard.all
    @secretariat = Secretariat.all
  end

  def show
    @board_of_trustees = BoardOfTrustee.find(params[:id])
  end
end
