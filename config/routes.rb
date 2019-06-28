Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :candidates, only: [:index, :update]
      patch 'candidates/:id/reset', to: 'candidates#reset'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
