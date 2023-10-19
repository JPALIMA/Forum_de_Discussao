class User < ApplicationRecord
     #Adicionando atributos e associações 
     validates :email, presence: true, uniqueness: true
     validates :password, presence: true
end

