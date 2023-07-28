Rails.application.routes.draw do
  root "articles#index"
  post 'charges', to: 'charges#create', as: 'charges'
  resources :articles do
    resources :comments
  end
end
