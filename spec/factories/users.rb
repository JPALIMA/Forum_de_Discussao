# spec/factories/users.rb
FactoryBot.define do
     factory :user do
          name {"exemplo"} #User faker para gerar nomes aleatórios
          email {"exemplo@exemple.com"} #Uso para gerar emails aleatórios
          password {"senha123"} #definir uma senha padrão
     end
end

