Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'boards#index'
 
resource :users,controller: 'registrations', only:[:create, :edit, :update] do
  # resources :profiles, shallow:true
# member do end   have id
  # collection do end no id
get '/sign_up', action: 'new'

end

resource :users,controller: 'sessions', only: [] do
get '/sign_in', action: 'new'
post '/sign_in', action: 'create'
delete '/sign_out', action: 'destroy'
end



resources :boards do
  
  resources :posts, shallow: true
  end
end
