Rails.application.routes.draw do
  resources :flights
  root 'flights#index'
end
