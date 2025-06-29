class UsersController < ApplicationController
  def create
    @user = User.new(user_params)

    if @user.save
      # We will add a login step here later
      redirect_to posts_path, notice: "Welcome! You have successfully signed up."
    else
      # If saving fails, re-render the homepage so they can see errors.
      render "pages/home", status: :unprocessable_entity
    end
  end

  private

  # This uses Strong Parameters for security.
  def user_params
    params.require(:user).permit(:nickname, :email, :password, :birthdate)
  end
end
