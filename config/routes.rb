Rails.application.routes.draw do
  resources :daily_workouts, only: [:new, :create] do
  end

  root to: "home#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
