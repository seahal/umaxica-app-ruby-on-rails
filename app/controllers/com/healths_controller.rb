class Com::HealthsController < ApplicationController
  def show
    expires_in 1.second # using browser cache

    respond_to do |format|
      format.html { render :show }
      format.json { render json: { status: "OK" } }
    end
  end
end
