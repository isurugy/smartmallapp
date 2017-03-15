Rails.application.routes.draw do
  get 'buyers/new'

  post 'buyers/new'

  get 'buyers/create'

  get 'buyers/update'

  get 'buyers/destroy'

  # get 'welcome/index'
  root 'welcome#index'
  # devise_for :users
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
