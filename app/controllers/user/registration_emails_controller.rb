class User::RegistrationEmailsController < ApplicationController
  def new
    @user_email = UserEmail.new
  end

  def create
    # MEMO: If you find the email is used, but you should do poker-face.
    #       Email should be only one in the world.
    param = params.require(:user_email).permit(:address)
    email_token = SecureRandom.alphanumeric.upcase[0, 16].to_s

    @user_email = UserEmail.new(param)
    @user_email.expires_in = Time.now + 1.hour
    @user_email.confirmation_token =  Argon2::Password.create(email_token, profile: :rfc_9106_high_memory)

    respond_to do |format|
      if @user_email.save
        # FIXME: not good email hashing
        format.html { redirect_to edit_user_registration_email_path(Base64.urlsafe_encode64(@user_email.address.to_s, padding: false)) }

        # TODO: send email to user
      elsif @user_email.errors.select { _1.type == "taken" and _1.attribute == "address" } && @user_email.errors.count == 1
        # to avoid that are there user activated
        format.html { redirect_to edit_user_registration_email_path(Base64.urlsafe_encode64(@user_email.address.to_s, padding: false)) }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # ?token
  def edit
  end

  # koko de verify
  def update
    email_address = Base64.urlsafe_decode64(params[:id].to_s)
    user_email = UserEmail.find(email_address)
    email_token = params[:token].to_s

    if user_email && Argon2::Password.verify_password(email_token, user_email.confirmation_token)
      render html: 'ok'
    else
      render html: 'dame'
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user_email

  end
end
