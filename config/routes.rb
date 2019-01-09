Rails.application.routes.draw do
  root to: 'pages#home', as: 'home'
  get'/tech', to: 'pages#tech', as: 'tech'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
