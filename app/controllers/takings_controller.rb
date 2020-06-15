class TakingsController < ApplicationController
  before_action :set_taking, only: [:show, :edit, :update, :destroy]

  # GET /takings
  # GET /takings.json
  def index
    @takings = Taking.all
  end

  # GET /takings/1
  # GET /takings/1.json
  def show
    @taking= Taking.find_by(id: params[:id])
    @client = Client.find_by(id: @taking.client_id)
  end

  # GET /takings/new
  def new
    @taking = Taking.new
    @clients = Client.all
    @client = Client.find_by(id: @taking.client_id)
    @users = User.all
    @user = User.find_by(id: @taking.user_id)
  end

  # GET /takings/1/edit
  def edit
  end

  # POST /takings
  # POST /takings.json
  def create
    @taking = Taking.new(taking_params)

    respond_to do |format|
      if @taking.save
        format.html { redirect_to @taking, notice: 'Taking was successfully created.' }
        format.json { render :show, status: :created, location: @taking }
      else
        format.html { render :new }
        format.json { render json: @taking.errors, status: :unprocessable_entity }
      end
    end
  end
  
  #   def get
  #   @taking = Taking.new(user_id: @current_user.id, client_id: params[:id],seet_id: params[:id], )

  #   respond_to do |format|
  #     if @taking.save
  #       format.html { redirect_to @taking, notice: 'Taking was successfully created.' }
  #       format.json { render :show, status: :created, location: @taking }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @taking.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # PATCH/PUT /takings/1
  # PATCH/PUT /takings/1.json
  def update
    respond_to do |format|
      if @taking.update(taking_params)
        format.html { redirect_to @taking, notice: 'Taking was successfully updated.' }
        format.json { render :show, status: :ok, location: @taking }
      else
        format.html { render :edit }
        format.json { render json: @taking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /takings/1
  # DELETE /takings/1.json
  def destroy
    @taking.destroy
    respond_to do |format|
      format.html { redirect_to takings_url, notice: 'Taking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taking
      @taking = Taking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def taking_params
      params.require(:taking).permit(:client_id, :user_id, :seet_id, :seet_number)
    end
end
