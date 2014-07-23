class Booking < MailForm::Base
  attribute :name, :validate => true
  attribute :email, :validate =>  /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :personquantity
  attribute :tablequantity
  attribute :eventdate
  attribute :eventname
  attribute :nickname, :captcha => true
  def headers
    {
      :subject => 'BerlinClubApp Booking Form',
      :to =>'berlinclubapp@gmail.com',
      :from => %("#{name}" <#{email}>)

    }

  end

end
