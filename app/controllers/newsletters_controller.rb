class NewslettersController < ApplicationController
  def create
    newsletter = Newsletter.new(newsletter_params)
    if newsletter.valid?
      newsletter.save
      flash[:success] = "You have subscribed successfully"
    else
      flash[:success] = "Problem in subscription: #{newsletter.errors.full_messages.join(', ')}"
    end
    redirect_to root_path
  end

  private
  def newsletter_params
    params.require(:newsletter).permit(:email)
  end
end
