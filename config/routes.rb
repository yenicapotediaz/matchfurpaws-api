Rails.application.routes.draw do
  resources :pets, except: [:new, :edit]
  resources :shelters, except: [:new, :edit]
  resources :adopters, except: [:new, :edit]

  resources :shelters, except: [:new, :edit] do
    resources :pets, except: [:new, :edit]
  end

  post 'users', to: 'users#create'
  post 'login', to: 'users#login'
end
