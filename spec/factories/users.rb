# spec/factories/users.rb
FactoryBot.define do
     factory :user do
          full_name { "exemplo"} #Use Faker para gerar nomes aleatórios
          email { "exemplo@exemple.com"} #Use Faker para gerar emails aleatórios
          password { "senha123" } #Você pode definir uma senha padrão, se necessário
     end
end
   
