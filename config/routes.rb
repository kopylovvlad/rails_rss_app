Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'topics1', to: 'topics#index1'
  get 'topics2', to: 'topics#index2'
  get 'topics3', to: 'topics#index3'
  get 'topics4', to: 'topics#index4'
end
