class User::RegistrationInformationController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(display_name: params["display_name"])

    respond_to do |format|
      if @user.save
        format.html { redirect_to  }
      else
        flash[:notice] = "bad token"
        format.html { render :edit, status: :unprocessable_entity }
      end
      end
  end

  def show
    render html: "aaa"
  end
end
