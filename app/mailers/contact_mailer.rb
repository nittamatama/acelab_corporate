class ContactMailer < ApplicationMailer

  layout 'mailer'
  
  def contact_mail(contact)
    @contact = contact
    mail to: 's90.nitta.masataka@gmail.com', subject: 'お問い合わせ内容'
  end
  
end
