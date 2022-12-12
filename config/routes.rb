Rails.application.routes.draw do
  root to: "ibagems#index"
  resources :ibagems do
    resources :picture_uploads, only: [:new, :create, :destroy]
  end
end
