class TopicsController < ApplicationController
  def index1
    @topics = get_topics
  end

  def index2
    @topics = get_topics
  end

  def index3
    @topics = get_topics
  end

  private

  def limit
    params[:limit] || 101
  end

  def get_topics
    Topic.reorder(publication_at: :desc).limit(limit)
  end
end
