Rails.application.routes.draw do
  resources :flats do
    collection do
      get 'query'
    end
  end
end
