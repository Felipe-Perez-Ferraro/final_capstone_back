class Users::SessionsController < Devise::SessionsController
  include RackSessionsFix

  respond_to :json

  def create
    current_user = User.find_by(name: params[:user][:name])

    if current_user.present?
      token = JWT.encode({ sub: current_user.id, jti: current_user.jti },
                         Rails.application.credentials.devise_jwt_secret_key!)

      render json: {
        status: {
          code: 200, message: 'Logged in successfully.',
          data: { user: UserSerializer.new(current_user).serializable_hash[:data][:attributes].merge(token:) }
        }
      }, status: :ok
    else
      render json: {
        status: { message: "User couldn't be found." }
      }, status: :unprocessable_entity
    end
  end
end
