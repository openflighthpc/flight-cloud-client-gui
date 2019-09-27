Rails.application.routes.draw do
  get 'nodes/index'
  get 'nodes/toggle'
  root 'nodes#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
