class ContNamingsController < ApplicationController
  before_action :set_cont_naming, only: [:show, :edit, :update, :destroy]

  # GET /cont_namings
  # GET /cont_namings.json
  def index
    @cont_namings = ContNaming.all
  end

  # GET /cont_namings/1
  # GET /cont_namings/1.json
  def show
  end

  # GET /cont_namings/new
  def new
    @cont_naming = ContNaming.new
  end

  # GET /cont_namings/1/edit
  def edit
  end

  # POST /cont_namings
  # POST /cont_namings.json
  def create
    @cont_naming = ContNaming.new(cont_naming_params)

    respond_to do |format|
      if @cont_naming.save
        format.html { redirect_to @cont_naming, notice: 'Cont naming was successfully created.' }
        format.json { render :show, status: :created, location: @cont_naming }
      else
        format.html { render :new }
        format.json { render json: @cont_naming.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cont_namings/1
  # PATCH/PUT /cont_namings/1.json
  def update
    respond_to do |format|
      if @cont_naming.update(cont_naming_params)
        format.html { redirect_to @cont_naming, notice: 'Cont naming was successfully updated.' }
        format.json { render :show, status: :ok, location: @cont_naming }
      else
        format.html { render :edit }
        format.json { render json: @cont_naming.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cont_namings/1
  # DELETE /cont_namings/1.json
  def destroy
    @cont_naming.destroy
    respond_to do |format|
      format.html { redirect_to cont_namings_url, notice: 'Cont naming was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cont_naming
      @cont_naming = ContNaming.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cont_naming_params
      params.fetch(:cont_naming, {})
    end
end
