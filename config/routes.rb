Rails.application.routes.draw do
  root 'info#index'
  resources :areas do
    resources :reviews
  end
end
