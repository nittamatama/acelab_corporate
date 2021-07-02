class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.contact_mail(@contact).deliver
      flash[:success] = 'メールを送信しました'
      redirect_to new_contact_path
    else
      flash[:danger] = 'メールの送信に失敗しました'
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:clinic_name, :name, :kana_name, :email, :phone_number, :address, :message)
  end
end
