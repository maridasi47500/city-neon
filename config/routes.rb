Rails.application.routes.draw do
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
  root "welcome#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
