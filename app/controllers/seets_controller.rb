class SeetsController < ApplicationController
  before_action :set_seet, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user

  # GET /seets
  # GET /seets.json
  def index
    @seets = Seet.all
  end
  
  def index_user
    @seets = Seet.all
  end

  # GET /seets/1
  # GET /seets/1.json
  def show
    @seet= Seet.find_by(id: params[:id])
    @client = Client.find_by(id: @seet.client_id)
  end

  # GET /seets/new
  def new
    @seet = Seet.new
  end

  # GET /seets/1/edit
  def edit
  end

  # POST /seets
  # POST /seets.json
  def create
    @seet = Seet.new(seet_params)

    respond_to do |format|
      if @seet.save
        format.html { redirect_to @seet, notice: 'Seet was successfully created.' }
        format.json { render :index, status: :created, location: @seet }
      else
        format.html { render :new }
        format.json { render json: @seet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seets/1
  # PATCH/PUT /seets/1.json
  def update
    respond_to do |format|
      if @seet.update(seet_params)
        format.html { redirect_to @seet, notice: 'Seet was successfully updated.' }
        format.json { render :show, status: :ok, location: @seet }
      else
        format.html { render :edit }
        format.json { render json: @seet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seets/1
  # DELETE /seets/1.json
  def destroy
    @seet.destroy
    respond_to do |format|
      format.html { redirect_to seets_url, notice: 'Seet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seet
      @seet = Seet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seet_params
      params.require(:seet).permit(:client_id, :remain_seat)
    end
end
