Rails.application.routes.draw do
  resources :users, only: [:new, :create]
     get 'login', to: 'sessions#new'
     post 'login', to: 'sessions#create'
     get 'show_projects', to: 'sessions#show_projects'
     post 'search_project', to: 'sessions#search_project'
     post 'search_project_by_name', to: 'sessions#search_project_by_name'
      get 'welcome', to: 'sessions#welcome'
      get 'authorized', to: 'sessions#page_requires_login'
      post 'add_project', to: 'sessions#add_project'
      root 'sessions#welcome'
      delete 'logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
