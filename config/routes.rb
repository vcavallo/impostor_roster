Rails.application.routes.draw do
  root 'posts#index'

  resources :posts, only: [:index, :new, :create, :show]
  resources :categories, only: [:index, :show]
  get 'about' => 'pages#about', :as => :about

end
