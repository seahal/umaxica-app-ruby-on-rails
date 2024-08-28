# frozen_string_literal: true

module Sign
  class UpController < ApplicationController
    before_action :set_user, only: %i[show edit update destroy]
    def index; end

    def show; end

    def new
      @user = User.new
    end

    def create
      @user = User.new(user_params)

      respond_to do |format|
        if @user.save
          format.html { redirect_to sign_up_path(@user), notice: 'Sample was successfully created.' }
          format.json { render :show, status: :created, location: user }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    end

    def update

    end

    def destroy

    end


    private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:email)
    end
  end
end
