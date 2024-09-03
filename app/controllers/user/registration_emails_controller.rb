class User::RegistrationEmailsController < ApplicationController
  def new
    @user_email = UserEmail.new

    session[:aaa] = "aaa"
  end

  def create
    # MEMO: If you find the email is used, but you should do poker-face.
    #       Email should be only one in the world.
    @user_email = UserEmail.new(user_email_params)

    respond_to do |format|
      if @user_email.save
        format.html { redirect_to user_registration_email_path(@user_email), notice: "Sample was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # ?token
  def show
  end

  # koko de verify
  def update
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user_email
    @user_email = UserEmail.find(params[:address])
  end

  # Only allow a list of trusted parameters through.
  def user_email_params
    params.require(:user_email).permit(:address)
  end
end
