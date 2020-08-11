class ApplicationController < ActionController::Base

  protected
  def after_sign_in_path_for(resource)
    case resource
    when AdminUser
      admin_top_path
    end
  end

  def after_sign_out_path_for(resource)
    case resource
    when :admin_user
      new_admin_user_session_path
    end
  end

end
