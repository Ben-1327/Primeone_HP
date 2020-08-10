class Admin::ContactsController < ApplicationController
  before_action :authenticate_admin_user!

  def today
    @contacts = Contact.where(created_at: Time.zone.now.all_day).page(params[:page]).reverse_order.per(10)
  end

  def index
    @contacts = Contact.page(params[:page]).reverse_order.per(10)
  end

end
