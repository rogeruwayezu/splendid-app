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

  get "/organizations", to: 'organizations#index'
  get "/organizations/new", to: 'organizations#new'
  post "/organizations", to: 'organizations#create'
  get "/organizations/:id", to: 'organizations#show'
  get "/organizations/:id/edit", to: 'organizations#edit'
  patch "/organizations/:id", to: 'organizations#update'
  delete "/organizations/:id", to: 'organizations#destroy'

  get "/applications/submission", to: 'applications#submission'
  get "/applications/new", to: 'applications#new'
  post "/applications", to: 'applications#create'
  get "/applications/:id", to: 'applications#show'

  get "/questions/new", to: 'questions#new'
  post "/questions", to: 'questions#create'
  get "/questions", to: 'questions#index'
  delete "/questions/:id", to: 'questions#destroy'

  get "/answers", to: 'answers#index'
  post "/answers", to: 'answers#create'
  get "/answers", to: 'answers#index'

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
