Rails.application.routes.draw do
  resources :projects_briefcases
  resources :projects_inversions
  resources :projects_benefits
  resources :projects_objetives
  resources :projects
  devise_for :users

  root 'home#index'
  resources :positions

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
