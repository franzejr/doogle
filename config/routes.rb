Rails.application.routes.draw do
  resources :words, param: :name, only: [:index, :show]
end
