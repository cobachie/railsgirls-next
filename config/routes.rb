Rails.application.routes.draw do
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get 'pages/info'
  root to: redirect('/ideas')

  resources :ideas
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
