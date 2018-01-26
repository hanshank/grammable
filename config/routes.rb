Rails.application.routes.draw do
  root 'grams#index'
  resources :grams
end
