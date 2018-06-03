module Web
  class VideosController < Web::BaseController
    def index
      Video.all
    end
  end
end
