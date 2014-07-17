class Contact <MailForm::Base
  attribute :name, :validate => true
  attribute :email, :validate =>  /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :nickname, :captcha => true
  def headers
    {
      :subject => 'BerlinClubApp Contact Form',
      :to =>'stefan.maier09@gmail.com',
      :from => %("#{name}" <#{email}>)

    }

  end

end
