module Web
  class UsersController < Web::BaseController
    def show
      @user = current_user
      @comments = current_user.comments
      render layout: 'web/layouts/base'
    end
  end
end