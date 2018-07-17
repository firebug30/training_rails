module Web
  class LikesController < Web::BaseController
    before_action :authenticate_user!, only: [:create, :destroy]

    def create
      video = Video.find(params[:video_id])
      current_user.favorite(video)
      @videos = Video.all
    end

    def destroy
      video = Video.find(params[:id])
      current_user.unfavorite(video)
      @videos = Video.all
    end
  end
end
