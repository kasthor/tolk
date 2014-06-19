Tolk::Engine.routes.draw do
  root :to => 'locales#index'

  post "/dump_all" => "locales#dump_all", :as => :dump_all_locales
  get "/dump_zip" => "locales#dump_zip", as: :dump_zip_locales
  get "/stats" => "locales#stats"

  resources :locales do
    member do
      get :all
      get :updated
    end
  end
  resource :search
end
