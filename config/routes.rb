Rails.application.routes.draw do
  get 'welcome/index'
  resources :replies, only: [:create]
  resources :topics

  # Define a rota raiz como a página de listagem de tópicos
  
  root to: "welcome#index"

end

