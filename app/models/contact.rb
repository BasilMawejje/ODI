class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :phone
  attribute :subject
  attribute :message

  # Declare the e-mail headers. It accepts anything the mail method
  append :remote_ip, :user_agent
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Enquiry from www.odiuganda.org",
      :to => "odiuganda1@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
