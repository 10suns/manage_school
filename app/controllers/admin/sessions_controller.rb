class Admin::SessionsController < Devise::SessionsController
  layout 'admin/layouts/application'

  def after_sign_in_path_for(resources)
    admin_dashboard_path
  end

  def after_sign_out_path_for(resource)
    new_admin_user_session_path
  end
end