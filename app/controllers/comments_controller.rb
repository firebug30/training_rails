class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(comment_params)
    redirect_to action: :show, controller: :videos
  end

  def comment_params
    params.permit(:content).merge(user_id: current_user.id, video_id: video.id)
  end
end
