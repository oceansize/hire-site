Rails.application.routes.draw do
  resources :vacancies
  devise_for :recruiters, controllers: { omniauth_callbacks: 'recruiters/omniauth_callbacks' }

  resource :company, except: [:index, :destroy]
  resource :settings
  resources :enquiries

  get 'dashboard/index'

  devise_for :users
  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
