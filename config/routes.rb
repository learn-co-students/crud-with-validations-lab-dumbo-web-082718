Rails.application.routes.draw do
  resources :songs#, only: [:edit, :index, :new, ]
end
