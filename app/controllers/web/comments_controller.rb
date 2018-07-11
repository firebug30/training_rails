module Web
  class CommentsController < Web::BaseController
    before_action :find_video, only: [:new, :create]

    def new
      @comment = Comment.new
      render layout: 'web/layouts/base'
    end

    def create
      Comment.create(comment_params)
      redirect_to  @video
    end

    def find_video
       @video = Video.find(params[:video_id])
    end

    private
    def comment_params
      params.require(:comment).permit(:content).merge(video_id: params[:video_id])
    end

  end
end
