module Web
  class CommentsController < Web::BaseController
    def new
      @comment = Comment.new
      @video = Video.find(params[:video_id])
    end

    def create
      @comment = Comment.create(comment_params)
      redirect_to action: :show, controller: :videos
    end

    def comment_params
      params.permit(:content).merge(user_id: current_user.id, video_id: params[:video_id])
    end
  end
end
