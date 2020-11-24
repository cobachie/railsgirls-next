class TimelineChannel < ApplicationCable::Channel
  def subscribed
    stream_from "timeline_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def like(data)
    idea = Idea.find(data["id"])
    idea.increment! :likes_count
    ActionCable.server.broadcast 'timeline_channel', { idea_id: idea.id, likes_count: idea.likes_count }
  end
end
