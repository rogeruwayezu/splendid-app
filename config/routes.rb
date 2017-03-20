Rails.application.routes.draw do
  post "/users" => "users#create"
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"

  get "/", to: 'pages#index'
  get "/scholarships", to: 'scholarships#index'
  get "/signup" => "users#new"
  get "/scholarships/new", to: 'scholarships#new'
  post "/scholarships", to: 'scholarships#create'
  get "/scholarships/:id", to: 'scholarships#show'
  get "/scholarships/:id/edit", to: 'scholarships#edit'
  patch "/scholarships/:id", to: 'scholarships#update'
  delete "/scholarships/:id", to: 'scholarships#destroy'

  get "/applications/new", to: 'applications#new'
  post "/applications", to: 'applications#create'
  get "/applications/:id", to: 'applications#show'

  get "/questions/new", to: 'questions#new'
  post "/questions", to: 'questions#create'
  get "/questions", to: 'questions#index'
  delete "/questions/:id", to: 'questions#destroy'

 namespace :api do
    namespace :v1 do
      get "/questions/new", to: 'questions#new'
      # get "/questions/", to: 'scholarships#show'
      post "/questions", to: 'questions#create'
      get "/scholarships/:id", to: 'scholarships#show'
      patch "/questions/:id", to: 'questions#update'
      delete "/questions/:id", to: 'questions#destroy'
    end
  end

end
