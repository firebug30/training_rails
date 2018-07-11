module Web
  class VideosController < Web::BaseController
    def index
      @q = Video.ransack(params[:q])
      @videos = @q.result.order(created_at: "DESC")
      render layout: 'web/layouts/base'
    end

    def search
      @q = Video.search(search_params)
      @videos = @q.result(distinct: true).order(created_at: "DESC")
      render layout: 'web/layouts/base'
    end

    def show
      @video = Video.find_by(video_id: video_id)

      # エラーハンドリングに関して
      # ここで raise された、エラーは Web::BaseController に書いてある rescue_from によって catchされて、500・404ページにリダイレクトされるようになっている。
      unless @video
        raise ParametersError, "Cannot find the video with id: #{video_id}"
      end

      unless @video.visible?
        raise ParametersError, "The video(id: #{video_id}) is invisible."
      end

      # layout: パラメータでレイアウトファイルを指定できる。
      render layout: 'web/layouts/base'
    end


    def video_id
      params.require(:id)
    end

    private

    def search_params
      params.require(:q).permit(:title_cont)
    end
  end
end
