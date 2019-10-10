Rails.application.routes.draw do
  devise_for :users
  namespace :api do
    namespace :v1 do
      devise_scope :user do
        post "sign_up", to: 'registrations#create'
      end
    end
  end
end
