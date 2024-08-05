# frozen_string_literal: true

class ConnectsController < ApplicationController
  before_action :set_connect, only: %i[show edit update destroy]

  # GET /connects or /connects.json
  def index
    @connects = Connect.all
  end

  # GET /connects/1 or /connects/1.json
  def show; end

  # GET /connects/new
  def new
    # binding.irb
    # puts 'aaaaa'
    # puts session[:_csrf_token]
    response.set_header('Access-Control-Allow-Origin', '*')

    respond_to do |format|
      format.html do
        redirect_to root_path
      end
      format.json do
        render json: { form_authenticity_token: }
      end
    end
  end

  # GET /connects/1/edit
  def edit; end

  # POST /connects or /connects.json
  def create
    @connect = Connect.new(connect_params)

    respond_to do |format|
      if @connect.save
        format.html { redirect_to connect_url(@connect), notice: 'Connect was successfully created.' }
        format.json { render :show, status: :created, location: @connect }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @connect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /connects/1 or /connects/1.json
  def update
    respond_to do |format|
      if @connect.update(connect_params)
        format.html { redirect_to connect_url(@connect), notice: 'Connect was successfully updated.' }
        format.json { render :show, status: :ok, location: @connect }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @connect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /connects/1 or /connects/1.json
  def destroy
    @connect.destroy!

    respond_to do |format|
      format.html { redirect_to connects_url, notice: 'Connect was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_connect
    @connect = Connect.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def connect_params
    params.require(:connect).permit(:title, :description)
  end
end
