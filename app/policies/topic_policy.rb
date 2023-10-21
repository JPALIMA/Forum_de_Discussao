class TopicPolicy < ApplicationPolicy
  def show?
    true #qualquer usário autenticado pode ver tópico
  end
end