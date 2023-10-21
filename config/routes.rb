# Restrição de autenticação para rotas principais
constraints ->(request) { request.env["warden"].authenticate? and request.env["warden"].user.is_a? User } do
  root to: 'welcome#index', as: :authenticated_root
  resources :replies, only: [:create]
  resources :topics
end
