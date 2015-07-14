Rails.application.routes.draw do
  root to: 'choices#index'
  resources :choices do
    resources :comments
  end
end
