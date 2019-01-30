Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :bars
      resources :pubcrawl_bars
      resources :pubcrawls
      resources :groups
      resources :user_groups
      resources :friendships
      resources :users
    end
  end 
end
