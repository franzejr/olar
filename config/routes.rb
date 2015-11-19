Rails.application.routes.draw do
  get '/olar', to: 'olar#index'
  post '/generate_olar', to: 'olar#generate'

  root to: 'olar#index'
end
