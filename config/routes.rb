Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'artists#index'

  resources :artists do
  #filtering artists
    collection do
      get :order_by_name
      get :order_by_date
    end
  end

  resources :songs
  resources :photos


end


