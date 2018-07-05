module Web
  class VideosController < Web::BaseController
    def index
      @videos = Video.all
      render layout: 'web/layouts/base'
    end

    def show
      # binding.pry
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
  end
end
