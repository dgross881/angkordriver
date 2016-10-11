Rails.application.routes.draw do
  devise_for :users
  namespace :admin do
    resources :services
    resources :contacts
    resources :users
    root to: "contacts#index"
  end

  root to: 'home#index'

  post "contact/new" => "contacts#new"
  resources :contacts, only: [:create, :new]
  get "/about" => "pages#about", as: :about
  get "/services" => "pages#services", as: :services
  get "/contact" => "pages#contact", as: :contact
end
