Rails.application.routes.draw do
  get 'static_pages/home'
  # root 'static_pages#home'
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/contact'
  resources :users
  resources :microposts

end
