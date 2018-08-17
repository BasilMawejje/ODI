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
                            .merge(duration_of_travel: params.fetch('Duration'),
                                    phone: params.fetch('Phone'),
                                    estimated_date_of_travel: params.fetch('Estimated_date_of_travel'),
                                    number_of_travellers: params.fetch('Number_of_travellers'))
  end
end
