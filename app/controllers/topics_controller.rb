class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end

  def show
  end

  def new
  end

  def create
  end
end
