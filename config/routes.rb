Rails.application.routes.draw do
  resources :users
  get "auth" => 'auth#new'
  post "auth" => 'auth#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
