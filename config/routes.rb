Rails.application.routes.draw do
  namespace :admin do
    devise_for :users, class_name: 'Admin::Admin', path: '', path_names: {
        sign_in: 'login',
        sign_out: 'logout'
    }
  end
end
