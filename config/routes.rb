FlindersAPI2::Application.routes.draw do
  namespace :api do
    namespace :v1 do
      get "/buildings" => "buildings#index"
      get "/buildings/:id" => "buildings#show"
      get "/buildings/:building_id/rooms" => "rooms#index"
      get "/buildings/:building_id/rooms/:id" => "rooms#show"
      get "/buildings/:building_id/rooms/:room_id/bookings" => "room_bookings#index"
      get "/buildings/:building_id/rooms/:room_id/bookings/:id" => "room_bookings#show"

      get "/rooms" => "rooms#index"
      get "/rooms/:id" => "rooms#show"
      
      get "/bookings" => "room_bookings#index"
      get "/bookings/:id" => "room_bookings#show"
    end
  end

  resources :broadcasts

  get '/signage/:id' => 'signage#view'
  get '/signage/:id/bookings' => 'signage#bookings'
  get '/signage/:id/news' => 'signage#news'

  get '/' => 'signage#view'
end
