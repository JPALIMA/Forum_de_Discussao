class TopicPolicy < ApplicationPolicy
  attr_reader :user, :topic

  def initialize(user, topic)
    @user = user
    @topic = topic
  end

  def create?
    user.present? # Qualquer usário logado pode criar um topico
  end

  def update?
    #Permite que um usuário atualize um tópico se ele for o autor do tópico
    user == topic.user
  end

  def destroy?
    #Permite que um usuário exclua um tópico se ele for o autor do tópico
    user == topic.user
  end
end
