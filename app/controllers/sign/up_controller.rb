# frozen_string_literal: true

module Sign
  class UpController < ApplicationController
    before_action :set_email_user, only: %i[show edit update destroy]
    def index; end

    def show; end

    def new
      @user_email = UserEmail.new
    end

    def create
      @user_email = UserEmail.new(user_email_params)

      respond_to do |format|
        if @user_email.save
          format.html { redirect_to sign_up_path(@user_email), notice: "Sample was successfully created." }
          format.json { render :show, status: :created, location: user }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @user_email.errors, status: :unprocessable_entity }
        end
      end
    end

    def update; end

    def destroy; end

    def edit; end

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
