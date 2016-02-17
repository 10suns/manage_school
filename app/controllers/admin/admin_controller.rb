class Admin::AdminController < ApplicationController
  layout 'admin/layouts/application'

  before_action :authenticate_admin_user!
  before_action :set_operator

  protected
  def set_operator
    RecordWithOperator.operator = current_admin_user
  end
end