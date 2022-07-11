class ScoreChannel < ApplicationCable::Channel
  def subscribed
    import consumer from "./consumer"
    consumer.subscriptions.create({ channel: "ScoreChannel", room: "Best Room" })
    stream_from "score_#{params[:room]}"
    post = Post.find(params[:id])
    stream_for post
    ScoreChannel.broadcast_to(@post)

  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end

import consumer from "./consumer"

consumer.subscriptions.create({ channel: "ScoreChannel", room: "Best Room" })


