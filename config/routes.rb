Rails.application.routes.draw do
  get 'company_details/show'

  get 'company_details/new'

  get 'company_details/edit'

  get 'dashboard/index'

  devise_for :users
  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
