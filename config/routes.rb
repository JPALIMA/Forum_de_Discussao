# Restrição de autenticação para rotas principais
authenticated :user do
  root to: 'welcome#index', as: :authenticated_root
  resources :replies, only: [:create]
  resources :topics
end
