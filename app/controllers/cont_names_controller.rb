class ContNamesController < ApplicationController
  before_action :set_cont_name, only: [:show, :edit, :update, :destroy]

  # GET /cont_names
  # GET /cont_names.json
  def index
    @cont_names = ContName.all
  end

  # GET /cont_names/1
  # GET /cont_names/1.json
  def show
  end

  # GET /cont_names/new
  def new
    @cont_name = ContName.new
  end

  # GET /cont_names/1/edit
  def edit
  end

  # POST /cont_names
  # POST /cont_names.json
  def create
    @cont_name = ContName.new(cont_name_params)

    respond_to do |format|
      if @cont_name.save
        format.html { redirect_to @cont_name, notice: 'Cont name was successfully created.' }
        format.json { render :show, status: :created, location: @cont_name }
      else
        format.html { render :new }
        format.json { render json: @cont_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cont_names/1
  # PATCH/PUT /cont_names/1.json
  def update
    respond_to do |format|
      if @cont_name.update(cont_name_params)
        format.html { redirect_to @cont_name, notice: 'Cont name was successfully updated.' }
        format.json { render :show, status: :ok, location: @cont_name }
      else
        format.html { render :edit }
        format.json { render json: @cont_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cont_names/1
  # DELETE /cont_names/1.json
  def destroy
    @cont_name.destroy
    respond_to do |format|
      format.html { redirect_to cont_names_url, notice: 'Cont name was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cont_name
      @cont_name = ContName.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cont_name_params
      params.require(:cont_name).permit(:status, :first_name, :last_name)
    end
end
