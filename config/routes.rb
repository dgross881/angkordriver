Rails.application.routes.draw do
  devise_for :users
  namespace :admin do

    root to: "#index"
  end

  root to: 'home#index'

  get "/about" => "pages#about", as: :about
  get "/services" => "pages#services", as: :services
  get "/contact" => "pages#contact", as: :contact
end
