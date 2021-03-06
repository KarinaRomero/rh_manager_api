Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount_devise_token_auth_for 'User', at: 'auth'
  namespace 'api' do
    namespace 'v1' do
      resources :skills
      resources :employees
      resources :assignments
    end
  end
  end
