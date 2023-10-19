Rails.application.routes.draw do
  #Rotas da área de administração
  namespace :admin do
    get '/', to: 'admin#index', as: 'root'

end

#Restrição de autenticação para rotas principais
authenticated :user do
  root to: 'welcome#index' #Rota raiz do projeto principal após o login
  resources :replies, only: [:create]
  resources :topics
end

#Rota principal antes de fazer login
  root 'devise/session#new'
end