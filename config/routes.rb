Rails.application.routes.draw do

  # この行がないとproductionモードで動かない
  root  'page#index'  #この1行を追加

  namespace :api do
    resources :users, only: [:show]
  end
  get 'page/index/:id' => "page#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
