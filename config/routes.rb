Rails.application.routes.draw do
  resources :shelters, except: [:new, :edit]
  resources :adopters, except: [:new, :edit]
end
