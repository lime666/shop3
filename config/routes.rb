Rails.application.routes.draw do
  root "pages#home"

  resources :categories, only: [:index, :show] do
    resources :products, only: [:index, :show]
  end

  get 'search', to: "categories#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
