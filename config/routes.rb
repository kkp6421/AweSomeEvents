Rails.application.routes.draw do
  resources :events
  root to: 'welcome#index'
  get '/auth/:provider/callback' => "sessions#create"
  get '/logout' => 'sessions#destroy', as: :logout

  resources :events do
    resources :tickets
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
