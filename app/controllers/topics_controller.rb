class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])
    authorize @topic
  end

  def new
    @topic = Topic.new
  end

  def update
    @topic = Topic.find(params[:id])
    authorize @topic #Verifica se o usuário tem permissão para atualizar o tópico

    #Se o usuário tiver permissão, continue com a atualização
    if @topic.update(topic_params)
      #Redirecione ou faça algo após a atualização bem-sucedida
    else
      #Lidere com erros, caso haja algum
    end
  end


  def create
    @topic = Topic.new(topic_params)

    if @topic.save
      redirect_to @topic, notice: "Topico criado com sucesso!"
    else
      render 'new'
    end
  end

  private

  def topic_params
    params.require(:topic).permit(:title, :content)
  end
end
