Rails.application.routes.draw do
  get 'topics1', to: 'topics#index1'
  get 'topics2', to: 'topics#index2'
  get 'topics3', to: 'topics#index3'
end
