Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'


  get "event" => "pages#event"
  get "foodtruck" => "pages#foodtruck"
  get "contact" => "pages#contact"
  get "cgv" => "pages#cgv"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

