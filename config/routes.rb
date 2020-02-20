Rails.application.routes.draw do
  namespace :api do
		namespace :v1 do
			resources :users
			resources :pets

      # get "/", to: "pets#index"
      root :to => "pets#index"

			patch "/pets/:id/toggle_adopt", to: "pets#toggle_adopt"
			post "/pets/:id/adopt", to: "pets#adopt"
      post "/users/:id/get_pet", to: "users#get_pet"

			post "/login", to: "auth#login"
			get "/auto_login", to: "auth#auto_login"
		end
	end
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
