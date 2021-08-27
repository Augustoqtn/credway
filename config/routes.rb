Rails.application.routes.draw do
  root 'contatos#index'
  resources :contatos
end
