Rails.application.routes.draw do



  # mount_devise_token_auth_for 'User', at: 'auth'


  # mount_devise_token_auth_for "User", at: 'auth'
  mount_devise_token_auth_for 'User', at: 'auth', skip: [:token_validations],
                              controllers: {
                                  sessions: 'api/v1/devise_token_auth/sessions' # full module nesting
                              }
  namespace :api do
    scope module: :v1 do
      resources :users
      resources :cars
      resources :trades
      resources :levels
      resources :syllabuses do
        collection do
          get "new"
        end
      end
      resources :languages
      resources :syllabus_languages
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
