Rails.application.routes.draw do
  resources :vacancies
  devise_for :recruiters, controllers: { omniauth_callbacks: 'recruiters/omniauth_callbacks' }
  devise_for :users

  resource :company, except: [:index, :destroy]
  get :settings, controller: :settings, action: :index

  namespace :recruiters do
    get :dashboard
    get :vacancies
    get :enquiries
    get :profile

    get 'vacancy_enquiry/:id', action: :vacancy_enquiry, as: :vacancy_enquiry
    post 'vacancy_enquiry/:id', action: :vacancy_enquiry_message, as: :vacancy_enquiry_message
  end

  namespace :companies do
      post 'vacancy_enquiry/:id', action: :vacancy_enquiry_message, as: :vacancy_enquiry_message
  end

  resources :enquiries

  get :dashboard, controller: :dashboard, action: :index

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
