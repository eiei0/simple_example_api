Rails.application.routes.draw do
  namespace :v1 do
    resources :contacts, only: %i[create update show]
  end
end
