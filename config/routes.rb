Rails.application.routes.draw do
  get "/places" => "places#index"
  get "/places/:id" => "places#show"
  patch "/places/:id" => "places#update"
  post "/places" => "places#create"
  delete "/places/:id" => "places#destroy"
end
