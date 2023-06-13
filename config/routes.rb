Rails.application.routes.draw do
  resources :tvchannels
  resources :videos do
    collection do
      post "addvideos"
    end
  end

  resources :musics do
    collection do
      post "addmusics"
    end
  end
  resources :radiowaves
  resources :places
  resources :create_places
  get 'user/info'
  get 'myradio/index'
  get 'welcome/page1'
  get 'welcome/index'
  devise_for :users
  devise_scope :user do
        get '/place' => 'registrations#add_place'
  end
  mount ActionCable.server => '/websocket'
  root "welcome#index"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
