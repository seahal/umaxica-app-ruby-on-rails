class User::MembershipsController < ApplicationController
  def index
  end

  def new
    @user_email = UserEmail.new
    @user_phone = UserPhone.new
  end

  def create
    @user_email = UserEmail.new(params[:user_email])
    # @sample = Sample.new(sample_params)
    #
    # respond_to do |format|
    #   if @sample.save
    #     format.html { redirect_to sample_url(@sample), notice: "Sample was successfully created." }
    #     format.json { render :show, status: :created, location: @sample }
    #   else
    #     format.html { render :new, status: :unprocessable_entity }
    #     format.json { render json: @sample.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  private
  def sample_params
    params.require(:user_email).permit(:address)
  end
end
