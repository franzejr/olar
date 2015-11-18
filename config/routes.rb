Rails.application.routes.draw do
  get '/olar', to: 'olar#index'
  post '/generate_olar', to: 'olar#generate'
end
