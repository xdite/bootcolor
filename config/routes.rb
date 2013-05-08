Rails.application.routes.draw do
  get '/switch_theme' => 'themes#switch'
end