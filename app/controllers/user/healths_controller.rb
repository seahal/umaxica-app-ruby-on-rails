class User::HealthsController < ApplicationController
  def show
    respond_to do |format|
      format.html { render :show }
      format.json { render json: {status: 'OK'} }
    end
  end
end
