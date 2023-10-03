class Api::V1::UsersController < ApiController
  def index
    @users = User.all
    res @users
  end

  def show
    @user = User.find(params[:id])
    res @user
  end
end
