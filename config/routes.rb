Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :google_homes do
    post "karuta", to: "karuta#index"
  end
end
