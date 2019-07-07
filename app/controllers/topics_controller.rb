class TopicsController < ApplicationController
  def index1
    # reorder('RANDOM()')
    @topics = Topic.reorder(publication_at: :desc).limit(101)
  end

  def index2
    @topics = Topic.reorder(publication_at: :desc).limit(101)
  end

  def index3
    @topics = Topic.reorder(publication_at: :desc).limit(1)
  end

  def index4
    @topics = Topic.reorder(publication_at: :desc).limit(1)
  end
end
