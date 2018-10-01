class SecretariatController < ApplicationController
  def index
    @secretariat = Secretariat.all
  end

  def show
    @secretariat = Secretariat.find(params[:id])
  end
end
