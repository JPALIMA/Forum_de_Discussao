Rails.application.routes.draw do
  resources :replies, only: [:create]
  resources :topics

  #Define a rota raiz como a página de listagem de tópicos
  root 'topics#index'
end