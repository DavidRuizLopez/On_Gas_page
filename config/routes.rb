Rails.application.routes.draw do
  root to: 'pages#home'
  get 'servicios', to: 'pages#servicios'
  get 'contactos', to: 'pages#contactos'
  post 'path', to: 'pages#path'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
