Rails.application.routes.draw do
 
  get 'leaf_web/app'
  get 'leaf_spa/app'
  # The "root" route, and any other no-defined url, will be handled by the SPA
  root :to => "leaf_web#app", as: 'leaf'

  get "manifest.webmanifest" => "metadata#webmanifest", as: :manifest
  get "manifest.json" => "metadata#webmanifest"
  get "dashboard" => "dashboard#index"

  get "/system/update_checker" => "leaf/update_checker#index"

  match '*path', to: 'leaf_web#app', via: :all
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end