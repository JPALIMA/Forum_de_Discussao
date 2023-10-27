# app/models/user.rb
class User < ApplicationRecord
     validates :name, presence: true
     validates :email, presence: true
     validates :password, presence: true
   
     # Outros atributos e associações do usuário
   end
   