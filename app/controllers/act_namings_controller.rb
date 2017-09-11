class ActNamingsController < ApplicationController
  before_action :set_act_naming, only: [:show, :edit, :update, :destroy]

  # GET /act_namings
  # GET /act_namings.json
  def index
    @act_namings = ActNaming.all
  end

  # GET /act_namings/1
  # GET /act_namings/1.json
  def show
  end

  # GET /act_namings/new
  def new
    @act_naming = ActNaming.new
  end

  # GET /act_namings/1/edit
  def edit
  end

  # POST /act_namings
  # POST /act_namings.json
  def create
    @act_naming = ActNaming.new(act_naming_params)

    respond_to do |format|
      if @act_naming.save
        format.html { redirect_to @act_naming, notice: 'Act naming was successfully created.' }
        format.json { render :show, status: :created, location: @act_naming }
      else
        format.html { render :new }
        format.json { render json: @act_naming.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /act_namings/1
  # PATCH/PUT /act_namings/1.json
  def update
    respond_to do |format|
      if @act_naming.update(act_naming_params)
        format.html { redirect_to @act_naming, notice: 'Act naming was successfully updated.' }
        format.json { render :show, status: :ok, location: @act_naming }
      else
        format.html { render :edit }
        format.json { render json: @act_naming.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /act_namings/1
  # DELETE /act_namings/1.json
  def destroy
    @act_naming.destroy
    respond_to do |format|
      format.html { redirect_to act_namings_url, notice: 'Act naming was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_act_naming
      @act_naming = ActNaming.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def act_naming_params
      params.fetch(:act_naming, {})
    end
end
