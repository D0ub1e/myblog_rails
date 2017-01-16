Rails.application.routes.draw do
  # 通过方法来决定路径
  root'static_pages#home'
  get '/help' , to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/signup', to: 'users#new'
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
