Rails.application.routes.draw do
  devise_for :users
  root "home#index"
  get 'my_record', to: 'home#my_record'
  get 'columns', to: 'home#columns'
end
