Rails.application.routes.draw do
  namespace :api do
		namespace :v1 do

    resources :users
    resources :pets

      post "/login", to: "auth#login"
      get "/auto_login", to: "auth#auto_login"
			post "/pets/:id/adopt", to: "pets#adopt"
		end
	end
end


