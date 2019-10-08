Rails.application.routes.draw do
  devise_for :users
  namespace :api do
    namespace :v1 do
      devise_for :users
    end
  end
end
