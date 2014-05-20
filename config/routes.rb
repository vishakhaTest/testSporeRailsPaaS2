TestSporeRailsPaaS2::Application.routes.draw do
  root to: 'home#index'

  get "/" => 'home#index'
  get "version" => 'version#index'
  get "healthcheck" => 'healthcheck#index'

end
