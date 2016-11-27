Rails.application.routes.draw do
#  get 'pages/arduino'

#  get 'arduino/:ip', :as => 'pages#arduino', :as => :pages, :constraints => { :ip => /[\w\.]+/ }
  get 'arduino/:ip' => 'pages#arduino', :ip => /[\w.]+/

  get 'pages/home'
  root 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
