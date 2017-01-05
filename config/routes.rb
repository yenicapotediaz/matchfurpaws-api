Rails.application.routes.draw do
  resources :pets, except: [:new, :edit]
  resources :shelters, except: [:new, :edit]
  resources :adopters, except: [:new, :edit]
end
