class Api::UsersController < ApiController
  before_action :authenticate

  def index
    return permission_denied_error unless conditions_met

    users = User.all

    render json: users, each_serializer: UserSerializer
  end

  def show
    user = User.find(params[:id])
    render json: user, each_serializer: UserSerializer
  end

  def new
    @user = User.new(user_params)
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, each_serializer: UserSerializer, :status=>201
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private 

  def user_params
    params.require(:user).permit(:email, :name, :password, :password_confirmation)
  end
end
