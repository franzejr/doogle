Rails.application.routes.draw do
  resources :words, param: :name
end