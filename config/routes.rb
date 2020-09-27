Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  get 'rooms/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :sound_files, only: [:new, :create, :show, :index]
end
