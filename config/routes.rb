Rails.application.routes.draw do

  
  devise_scope :trader do
    root to: 'dashboard#index'
  end
  devise_scope :trader do
    get '/traders/sign_out' => 'devise/sessions#destroy'
  end
  
  devise_for :traders
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
