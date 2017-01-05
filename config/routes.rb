Rails.application.routes.draw do
  resources :adopters, except: [:new, :edit]
end
