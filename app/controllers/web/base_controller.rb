class ParametersError < StandardError; end

module Web
  class BaseController < ApplicationController

    # rescue_from について
    # 所定のアクションが実行されている間に raise されたエラーは最終的にここで、catchされて処理される。
    #
    # [備考]
    # ・ https://techracho.bpsinc.jp/hachi8833/2018_04_09/54676
    rescue_from Exception,       with: :handle_500
    rescue_from ParametersError, with: :handle_404

    def handle_404(e = nil)
      @error = e
      render 'web/errors/404', layout: 'web/layouts/base', status: :not_found
    end

    def handle_500(e = nil)
      @error = e
      render 'web/errors/500', layout: 'web/layouts/base', status: :internal_server_error
    end

    def error_obj(code = SYSTEM_ERROR, msg = nil, flg: 1)
      {
        error: {
          error_flg: flg,
          error_code: code,
          error_message: msg
        }
      }
    end
  end
end