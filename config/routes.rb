Rails.application.routes.draw do

  namespace :api do
    namespace :v1, default: {format: :json} do
      get "doctors/search", to: "doctors#search"
    end
  end
end
