class ActNumsController < ApplicationController
  before_action :set_act_num, only: [:show, :edit, :update, :destroy]

  # GET /act_nums
  # GET /act_nums.json
  def index
    @act_nums = ActNum.all
  end

  # GET /act_nums/1
  # GET /act_nums/1.json
  def show
  end

  # GET /act_nums/new
  def new
    @act_num = ActNum.new
  end

  # GET /act_nums/1/edit
  def edit
  end

  # POST /act_nums
  # POST /act_nums.json
  def create
    @act_num = ActNum.new(act_num_params)

    respond_to do |format|
      if @act_num.save
        format.html { redirect_to @act_num, notice: 'Act num was successfully created.' }
        format.json { render :show, status: :created, location: @act_num }
      else
        format.html { render :new }
        format.json { render json: @act_num.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /act_nums/1
  # PATCH/PUT /act_nums/1.json
  def update
    respond_to do |format|
      if @act_num.update(act_num_params)
        format.html { redirect_to @act_num, notice: 'Act num was successfully updated.' }
        format.json { render :show, status: :ok, location: @act_num }
      else
        format.html { render :edit }
        format.json { render json: @act_num.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /act_nums/1
  # DELETE /act_nums/1.json
  def destroy
    @act_num.destroy
    respond_to do |format|
      format.html { redirect_to act_nums_url, notice: 'Act num was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_act_num
      @act_num = ActNum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def act_num_params
      params.require(:act_num).permit(:status, :source, :act_num)
    end
end
