class User::RegistrationsController < ApplicationController
  def new
    @user_email = UserEmail.new
    @user_phone = UserPhone.new
  end

  private
  def sample_params
    params.require(:user_email).permit(:address)
  end
end
