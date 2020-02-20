Rails.application.routes.draw do
  namespace :api do
		namespace :v1 do
      post "/login", to: "auth#login"

      # get "/", to: "pets#index"

			patch "/pets/:id/toggle_adopt", to: "pets#toggle_adopt"
			post "/pets/:id/adopt", to: "pets#adopt"
      post "/users/:id/get_pet", to: "users#get_pet"

			get "/auto_login", to: "auth#auto_login"
      resources :users
      resources :pets
		end
	end
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
