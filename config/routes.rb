Rails.application.routes.draw do

  namespace :api do
    resources :users, only: [:show]
  end
  get 'page/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
