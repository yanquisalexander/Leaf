Rails.application.routes.draw do
 
  get 'leaf_web/app'
  get 'leaf_spa/app'
  # The "root" route, and any other no-defined url, will be handled by the SPA
  root :to => "leaf_web#app", as: 'leaf'
  match '*path', to: 'leaf_web#app', via: :all
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end