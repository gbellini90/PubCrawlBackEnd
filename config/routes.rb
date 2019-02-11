Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :bars
      resources :pubcrawl_bars
      resources :pubcrawls
      resources :groups
      resources :user_groups
      resources :friendships
      resources :users do
        get '/buds', to: 'users#buds'
        get 'budless', to: 'users#usersWithoutBuds'
        get 'friends', to: 'users#friends'
        get 'pending', to: 'users#pendingFriends'
        get 'pendingFriendees', to: 'users#pendingFriendees'
        get 'pendingFrienders', to: 'users#pendingFrienders'
        get 'mygroups', to: 'users#myGroups'
      end

      post '/search', to: 'bars#search'

    end
  end
end
