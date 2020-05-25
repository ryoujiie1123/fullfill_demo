class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user

  # GET /clients
  # GET /clients.json
  def index
    @clients = Client.all
  end

  # GET /clients/1
  # GET /clients/1.json
  def show
  end

  # GET /clients/new
  def new
    @client = Client.new
  end

  # GET /clients/1/edit
  def edit
  end

  # POST /clients
  # POST /clients.json
  def create
    @client = Client.new(client_params)

    respond_to do |format|
      if @client.save
        format.html { redirect_to @client, notice: '店舗登録を完了しました。' }
        format.json { render :show, status: :created, location: @client }
      else
        format.html { render :new }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clients/1
  # PATCH/PUT /clients/1.json
  def update
    @client = Client.find_by(id: params[:id])
    # @client.name = params[:name]
    # @client.email = params[:email]
    if params[:image]
      @client.image_name = "#{@client.id}.jpg"
      image=params[:image]
      File.binwrite("public/client_images/#{@client.image_name}", image.read)
    end
    
    if @client.save
      flash[:notice] = "店舗情報を編集しました"
      redirect_to("/clients/#{@client.id}")
    else
      render("clients/edit")
    end
    # respond_to do |format|
    #   if @client.update(client_params)
    #     # @client.image_name = "#{@client.id}.jpg"
    #     image=params[:image]
    #     File.binwrite("public/client_images/#{@client.image_name}", image)
    #     format.html { redirect_to @client, notice: '店舗情報をアップデートしました。' }
    #     format.json { render :show, status: :ok, location: @client }
        
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @client.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # DELETE /clients/1
  # DELETE /clients/1.json
  def destroy
    @client.destroy
    respond_to do |format|
      format.html { redirect_to clients_url, notice: '店舗情報の削除を完了しました。' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_params
      params.require(:client).permit(:name, :email, :max_seat, :phone_number, :title, :image_name)
    end
end
