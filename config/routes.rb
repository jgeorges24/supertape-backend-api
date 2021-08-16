Rails.application.routes.draw do
  resources :mixtapes do
  resources :opinions
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
