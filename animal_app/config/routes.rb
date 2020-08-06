Rails.application.routes.draw do
  resources :sightings
  get '/sightings/date/:start_date/:end_date' => 'sightings#date'
  resources :wildlives
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
