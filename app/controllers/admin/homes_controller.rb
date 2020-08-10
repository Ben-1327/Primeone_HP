class Admin::HomesController < ApplicationController
  before_action :authenticate_admin_user!


  def top
    @contacts = Contact.where(created_at: Time.zone.now.all_day)
  end

end
