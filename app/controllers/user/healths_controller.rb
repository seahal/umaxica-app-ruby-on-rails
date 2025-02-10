class User::HealthsController < ApplicationController
  def show
    respond_to do |format|
      expires_in 1.second # using browser cache

      format.html { render :show }
      format.json { render json: { status: "OK", abc: Time.now } }
    end
  end
end
