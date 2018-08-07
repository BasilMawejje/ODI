class BoardOfTrusteesController < ApplicationController
  def index
    @board_of_trustees = BoardOfTrustee.all
  end

  def show
    @board_of_trustees = BoardOfTrustee.find(params[:id])
  end
end
