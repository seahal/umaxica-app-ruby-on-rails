class User::RegistrationEmailsController < ApplicationController
  def new
    @user_email = UserEmail.new
  end

  def create
    # MEMO: If you find the email is used, but you should do poker-face.
    #       Email should be only one in the world.
    param = params.require(:user_email).permit(:address)
    @user_email = UserEmail.new(param)

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
end
