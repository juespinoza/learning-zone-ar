class SessionsController < ::Devise::SessionsController
  skip_forgery_protection only: :create

  def create
    user = User.find_by_email(sign_in_params[:email]) || User.find_by_username(sign_in_params[:email])

    if user && user.valid_password?(sign_in_params[:password])
      @current_user = user
    else
      render json: { errors: { 'email or password' => ['is invalid'] } }, status: :unprocessable_entity
    end
  end
end