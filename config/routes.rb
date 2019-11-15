Rails.application.routes.draw do
  resources :schedules
  devise_for :users
  get 'schedule_users/:id/new', to: 'schedule_users#new'
  post 'schedules/schedule_users/:id', to: 'schedule_users#create'

  namespace :api, {format: 'json'} do
    namespace :v1 do
      resources :schedules
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
