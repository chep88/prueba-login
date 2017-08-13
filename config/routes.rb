Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :authenticate do
    post 'login'
  end

  #post '/authenticate', to: 'authenticate#login'
end
