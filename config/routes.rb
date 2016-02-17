Rails.application.routes.draw do
  namespace :admin do
    devise_for :user, class_name: 'Admin::Admin', path: '', path_names: {
        sign_in: 'login',
        sign_out: 'logout'
    }

    get 'dashboard' => 'dashboard#index'
    resources :courses
  end
end
