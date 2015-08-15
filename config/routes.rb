Rails.application.routes.draw do
  root "beats#index"		
  # get "beats" => "beats#index"
  # get "beats/:id" => "beats#show", as: "beat"
  # get "beats/:id/edit" => "beats#edit", as: "edit_beat"
  # patch "beats/:id" => "beats#update"

  resources :beats
end
