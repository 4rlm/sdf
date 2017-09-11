class ContNumsController < ApplicationController
  before_action :set_cont_num, only: [:show, :edit, :update, :destroy]

  # GET /cont_nums
  # GET /cont_nums.json
  def index
    @cont_nums = ContNum.all
  end

  # GET /cont_nums/1
  # GET /cont_nums/1.json
  def show
  end

  # GET /cont_nums/new
  def new
    @cont_num = ContNum.new
  end

  # GET /cont_nums/1/edit
  def edit
  end

  # POST /cont_nums
  # POST /cont_nums.json
  def create
    @cont_num = ContNum.new(cont_num_params)

    respond_to do |format|
      if @cont_num.save
        format.html { redirect_to @cont_num, notice: 'Cont num was successfully created.' }
        format.json { render :show, status: :created, location: @cont_num }
      else
        format.html { render :new }
        format.json { render json: @cont_num.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cont_nums/1
  # PATCH/PUT /cont_nums/1.json
  def update
    respond_to do |format|
      if @cont_num.update(cont_num_params)
        format.html { redirect_to @cont_num, notice: 'Cont num was successfully updated.' }
        format.json { render :show, status: :ok, location: @cont_num }
      else
        format.html { render :edit }
        format.json { render json: @cont_num.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cont_nums/1
  # DELETE /cont_nums/1.json
  def destroy
    @cont_num.destroy
    respond_to do |format|
      format.html { redirect_to cont_nums_url, notice: 'Cont num was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cont_num
      @cont_num = ContNum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cont_num_params
      params.require(:cont_num).permit(:status, :source, :cont_num)
    end
end
