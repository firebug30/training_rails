module Web
  class UsersController < Web::BaseController
    before_action :set_user

    def show
      @comments = @user.comments
      @likes = current_user.likes
      render layout: 'web/layouts/base'
    end

    def comments
      @comments = @user.comments
      render layout: 'web/layouts/base'
    end

    def likes
      @likes = @user.likes
      render layout: 'web/layouts/base'
    end

    private
    def set_user
      @user = User.find(params[:id])
    end
  end
end
