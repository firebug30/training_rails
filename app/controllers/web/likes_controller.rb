module Web
  class LikesController < Web::BaseController
    before_action :authenticate_user!, only: [:create, :destroy]
    def create
      @video = Video.find(params[:video_id])
      @video.line(current_user)
    end

    def destroy
      @video = Like.find(params[:id]).video
      @video.unfavorite(current_user)
    end
  end
end