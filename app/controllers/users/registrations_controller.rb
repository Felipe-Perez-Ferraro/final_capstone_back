class Users::RegistrationsController < Devise::RegistrationsController
  def create
    @user = User.new(sign_up_params)

    if @user.save
      render json: {
        status: {
          code: 200, message: 'Signed up successfully. Now please log in.',
          data: { user: UserSerializer.new(@user).serializable_hash[:data][:attributes] }
        }
      }, status: :ok
    else
      render json: {
        status: { message: "User couldn't be created successfully.", errors: @user.errors.full_messages }
      }, status: :unprocessable_entity
    end
  end

  private

  def sign_up_params
    params.require(:user).permit(:name)
  end
end
