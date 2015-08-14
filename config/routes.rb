Rails.application.routes.draw do
  
  root to: 'videos#index'
  
  get    'home'    => 'static_pages#home'
  get    'leagues' => 'static_pages#leagues'
  get    'help'    => 'static_pages#help'
  get    'newvideos'    => 'static_pages#videos'
  get    'about'   => 'static_pages#about'
  get    'contact' => 'static_pages#contact'
  get    'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  get    'forgot_password'  => 'sessions#new'
  get    'signup'  => 'sessions#new'
  
  get 'forgot password' => 'password_resets#new'
  get 'edit password' => 'password_resets#edit'
 
  get 'sign', to: 'sessions#from_omniauth'
  get 'auth/failure', to: redirect('/')
 
  post   'login'   => 'sessions#create'

  delete 'logout'  => 'sessions#destroy'
  
  resources :users do
    member do
      get :following, :followers
    end
  end
  
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :microposts,          only: [:create, :destroy]
  resources :relationships,       only: [:create, :destroy]
  resources :videos,              only: [:index, :new, :create]
  resources :video_uploads,       only: [:new, :create]
end