class ContNumingsController < ApplicationController
  before_action :set_cont_numing, only: [:show, :edit, :update, :destroy]

  # GET /cont_numings
  # GET /cont_numings.json
  def index
    @cont_numings = ContNuming.all
  end

  # GET /cont_numings/1
  # GET /cont_numings/1.json
  def show
  end

  # GET /cont_numings/new
  def new
    @cont_numing = ContNuming.new
  end

  # GET /cont_numings/1/edit
  def edit
  end

  # POST /cont_numings
  # POST /cont_numings.json
  def create
    @cont_numing = ContNuming.new(cont_numing_params)

    respond_to do |format|
      if @cont_numing.save
        format.html { redirect_to @cont_numing, notice: 'Cont numing was successfully created.' }
        format.json { render :show, status: :created, location: @cont_numing }
      else
        format.html { render :new }
        format.json { render json: @cont_numing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cont_numings/1
  # PATCH/PUT /cont_numings/1.json
  def update
    respond_to do |format|
      if @cont_numing.update(cont_numing_params)
        format.html { redirect_to @cont_numing, notice: 'Cont numing was successfully updated.' }
        format.json { render :show, status: :ok, location: @cont_numing }
      else
        format.html { render :edit }
        format.json { render json: @cont_numing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cont_numings/1
  # DELETE /cont_numings/1.json
  def destroy
    @cont_numing.destroy
    respond_to do |format|
      format.html { redirect_to cont_numings_url, notice: 'Cont numing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cont_numing
      @cont_numing = ContNuming.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cont_numing_params
      params.fetch(:cont_numing, {})
    end
end
