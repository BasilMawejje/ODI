class ContactController < ApplicationController
  def index
    @contact = Contact.new(params[:contact])
    @contact.request = request
      if @contact.deliver
        # re-initialize Home object for cleared form
        @contact = Contact.new
        redirect_to root_url
        flash[:success] = "Enquiry successfully sent"
      end
  end

  def create
  end

  def contact_params
    params.require(:contact).permit(:name, :email)
                            .merge( phone: params.fetch('Phone'))
  end
end
