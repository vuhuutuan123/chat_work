class Api::V1::RegistrationsController < Devise::RegistrationsController
  skip_before_action :verify_authenticity_token

  def create
    user = User.new user_params
    if user.save
      render json: {success: true}, status: 200
    else
      render json: {success: false, messages: user.errors.full_messages}, status: 200
    end
  end

  private
  def user_params
    params.require(:user).permit :email, :name, :password, :password_confirmation
  end
end
