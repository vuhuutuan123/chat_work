class Api::V1::SessionsController < Devise::SessionsController
  before_action :load_user_authentication
  skip_before_action :verify_authenticity_token

  respond_to :json

  def create
    if @user.valid_password? user_params[:password]
      sign_in @user, store: false
      render json: { auth_token: @user.authentication_token, message: 'Signed in successfully', user: @user, status: 200 }
      return
    end
    invalid_login_attempt
  end

  def destroy
    if @user.authentication_token == user_params[:authentication_token]
      sign_out @user
      render json: { message: 'Signed out' }, status: 200
    else
      render json: { message: 'Invalid token' }, status: 200
    end
  end

  private

  def user_params
    params.permit :email, :password, :authentication_token
  end

  def invalid_login_attempt
    render json: { message: 'Sign in failed' }, status: 200
  end

  def ensure_params_exist
    return unless params[:user].blank?

    render json: { message: 'Missing params' }, status: 422
  end

  def load_user_authentication
    @user = User.find_by_email user_params[:email]
    return login_invalid unless @user
  end

  def login_invalid
    render json: { message: 'Invalid login' }, status: 200
  end
end
