ProjectBoard::Application.routes.draw do
  devise_for :users
  root "homes#index"

  # dashboard is singleton resource -- theres only one
  # if we did 'resources :dashboards' instead, our url would
  # have been /dashboards/:id. And a dashboard doesn't have an id
  # if an object doesn't have an :id than its a singleton resource
  resource :dashboard, only: [:show]
end
