Rails.application.routes.draw do
  root to: "list#index"
  resources :lists, except: [:update, :edit, :destroy] do
    resources :bookmarks, only: [:create, :new]
  end
  resources :bookmarks, only: [:destroy]
end
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
