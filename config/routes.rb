Rails.application.routes.draw do
  get 'dashboard/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'dashboard#index'

  scope :api, module: "api", defaults: { format: :json } do
    resources :patient do
      get 'set_favourite', on: :collection
      post 'create_patient_quote', on: :collection
    end
  end
  get '*path' => 'dashboard#index'
end
