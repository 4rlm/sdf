class ContactingsController < ApplicationController
  before_action :set_contacting, only: [:show, :edit, :update, :destroy]

  # GET /contactings
  # GET /contactings.json
  def index
    @contactings = Contacting.all
  end

  # GET /contactings/1
  # GET /contactings/1.json
  def show
  end

  # GET /contactings/new
  def new
    @contacting = Contacting.new
  end

  # GET /contactings/1/edit
  def edit
  end

  # POST /contactings
  # POST /contactings.json
  def create
    @contacting = Contacting.new(contacting_params)

    respond_to do |format|
      if @contacting.save
        format.html { redirect_to @contacting, notice: 'Contacting was successfully created.' }
        format.json { render :show, status: :created, location: @contacting }
      else
        format.html { render :new }
        format.json { render json: @contacting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contactings/1
  # PATCH/PUT /contactings/1.json
  def update
    respond_to do |format|
      if @contacting.update(contacting_params)
        format.html { redirect_to @contacting, notice: 'Contacting was successfully updated.' }
        format.json { render :show, status: :ok, location: @contacting }
      else
        format.html { render :edit }
        format.json { render json: @contacting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contactings/1
  # DELETE /contactings/1.json
  def destroy
    @contacting.destroy
    respond_to do |format|
      format.html { redirect_to contactings_url, notice: 'Contacting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contacting
      @contacting = Contacting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contacting_params
      params.fetch(:contacting, {})
    end
end
