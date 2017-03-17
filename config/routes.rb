Rails.application.routes.draw do
  get 'buyers/index'
  post '/buyers/new'

  get 'buyers/new'

  post 'buyers/create'

  post 'buyers/update'

  get 'buyers/edit'

  get 'buyers/destroy'


  root 'welcome#index'
  # devise_for :users
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
