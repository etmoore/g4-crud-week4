Rails.application.routes.draw do
  resource :events
  root 'events#index'
end
