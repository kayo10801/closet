Rails.application.routes.draw do
  get 'clothes/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "clothes#index"

  resources :clothes do
     collection do
       get 'search'
     end  
  end
end
