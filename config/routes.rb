Rails.application.routes.draw do
  devise_for :users
  namespace :api do
    namespace :v1 do
      devise_scope :user do
        post 'sign_in', to: 'sessions#create'
        delete 'sign_out', to: 'sessions#destroy'
      end
    end
  end
end
