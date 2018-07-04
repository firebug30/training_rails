module Web
  class UsersController < Web::BaseController
    def show
      @user = current_user
      @comments = current_user.comments
    end
  end
end