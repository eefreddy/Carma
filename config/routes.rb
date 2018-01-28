Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  root 'static_pages#home'
  get  '/rider',    to: 'static_pages#rider'
  get  '/driver',    to: 'static_pages#driver'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
 # get'/locations', to: 'locations#current_location'
  get  '/signup',  to: 'users#new'
  get  '/login',   to: 'sessions#new'
  post '/login',   to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users
  resources :trips, only: [:create, :destroy]

end
