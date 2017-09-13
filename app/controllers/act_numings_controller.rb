class ActNumingsController < ApplicationController
  before_action :set_act_numing, only: [:show, :edit, :update, :destroy]

  # GET /act_numings
  # GET /act_numings.json
  def index
    @act_numings = ActNuming.all
  end

  # GET /act_numings/1
  # GET /act_numings/1.json
  def show
  end

  # GET /act_numings/new
  def new
    @act_numing = ActNuming.new
  end

  # GET /act_numings/1/edit
  def edit
  end

  # POST /act_numings
  # POST /act_numings.json
  def create
    @act_numing = ActNuming.new(act_numing_params)

    respond_to do |format|
      if @act_numing.save
        format.html { redirect_to @act_numing, notice: 'Act numing was successfully created.' }
        format.json { render :show, status: :created, location: @act_numing }
      else
        format.html { render :new }
        format.json { render json: @act_numing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /act_numings/1
  # PATCH/PUT /act_numings/1.json
  def update
    respond_to do |format|
      if @act_numing.update(act_numing_params)
        format.html { redirect_to @act_numing, notice: 'Act numing was successfully updated.' }
        format.json { render :show, status: :ok, location: @act_numing }
      else
        format.html { render :edit }
        format.json { render json: @act_numing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /act_numings/1
  # DELETE /act_numings/1.json
  def destroy
    @act_numing.destroy
    respond_to do |format|
      format.html { redirect_to act_numings_url, notice: 'Act numing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_act_numing
      @act_numing = ActNuming.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def act_numing_params
      params.fetch(:act_numing, {})
    end
end
