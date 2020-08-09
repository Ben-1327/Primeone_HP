class ContactsController < ApplicationController

  def contact
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to done_path, notice: "フォームは送信されました。"
    else
      redirect_to contact_path, notice: "フォームの送信に失敗しました。"
    end
  end

  def confirm
    @contact = Contact.new
    @contact.name = params[:name]
    @contact.ruby = params[:ruby]
    @contact.company_name = params[:company_name]
    @contact.email = params[:email]
    @contact.tel = params[:tel]
    @contact.contents = params[:contents]
    if @contact.valid?
      render :action => 'done'
    else
      render :action => 'contact'
    end
  end

  def done
    @contact = Contact.new(contact_params)
    if params[:back]
      render :action => 'contact'
    else
      ContactMailer.received_email(@contact).deliver_now
      render :action => 'done'
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :ruby, :company_name, :email, :tel, :contents)
  end

end
