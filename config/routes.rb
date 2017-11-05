Rails.application.routes.draw do
  devise_for :users
  root 'rooms#show'
  get '/rooms/:id', to: 'rooms#chat_room'
  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
