Rails.application.routes.draw do
  devise_for :users
  #resources :messages
  resources :rooms, :users do
    resources :messages do
      member { post :vote }
    end
  end

  root 'rooms#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount ActionCable.server => '/cable'
end
