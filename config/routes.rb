Rails.application.routes.draw do
  resources :vacancies
  devise_for :recruiters, controllers: { omniauth_callbacks: 'recruiters/omniauth_callbacks' }

  resource :company, except: [:index, :destroy]
  get :settings, controller: :settings, action: :index

  namespace :recruiters do
    get :dashboard
    get :vacancies
    get :enquiries
    get :profile
  end

  resources :enquiries

  get :dashboard, controller: :dashboard, action: :index

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
