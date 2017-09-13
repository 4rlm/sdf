class ActNamesController < ApplicationController
  before_action :set_act_name, only: [:show, :edit, :update, :destroy]

  # GET /act_names
  # GET /act_names.json
  def index
    @act_names = ActName.all
  end

  # GET /act_names/1
  # GET /act_names/1.json
  def show
  end

  # GET /act_names/new
  def new
    @act_name = ActName.new
  end

  # GET /act_names/1/edit
  def edit
  end

  # POST /act_names
  # POST /act_names.json
  def create
    @act_name = ActName.new(act_name_params)

    respond_to do |format|
      if @act_name.save
        format.html { redirect_to @act_name, notice: 'Act name was successfully created.' }
        format.json { render :show, status: :created, location: @act_name }
      else
        format.html { render :new }
        format.json { render json: @act_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /act_names/1
  # PATCH/PUT /act_names/1.json
  def update
    respond_to do |format|
      if @act_name.update(act_name_params)
        format.html { redirect_to @act_name, notice: 'Act name was successfully updated.' }
        format.json { render :show, status: :ok, location: @act_name }
      else
        format.html { render :edit }
        format.json { render json: @act_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /act_names/1
  # DELETE /act_names/1.json
  def destroy
    @act_name.destroy
    respond_to do |format|
      format.html { redirect_to act_names_url, notice: 'Act name was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_act_name
      @act_name = ActName.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def act_name_params
      params.require(:act_name).permit(:status, :act_name)
    end
end
