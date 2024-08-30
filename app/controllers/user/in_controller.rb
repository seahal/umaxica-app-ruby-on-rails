# frozen_string_literal: true

module Sign
  class InController < ApplicationController
    def new
      @user_email = UserEmail.new
    end

    def create
      @user_email = UserEmail.new(set_email_user)
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_email_user
      @user_email = UserEmail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_email_params
      params.require(:user_email).permit(:address)
    end
  end
end
