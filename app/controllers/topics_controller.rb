class TopicsController < ApplicationController 
  def index
    @topics = Topic.all
  end

  def show 
    @topic = Topic.find(params[:id])
  end

  def new
    @topic = Topic.new
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
