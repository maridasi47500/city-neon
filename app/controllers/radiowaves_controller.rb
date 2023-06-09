class RadiowavesController < ApplicationController
  before_action :set_radiowafe, only: %i[ show edit update destroy ]

  # GET /radiowaves or /radiowaves.json
  def index
    @radiowaves = Radiowave.all
  end

  # GET /radiowaves/1 or /radiowaves/1.json
  def show
  end

  # GET /radiowaves/new
  def new
    @radiowafe = Radiowave.new
  end

  # GET /radiowaves/1/edit
  def edit
  end

  # POST /radiowaves or /radiowaves.json
  def create
    @radiowafe = Radiowave.new(radiowafe_params)

    respond_to do |format|
      if @radiowafe.save
        format.html { redirect_to radiowafe_url(@radiowafe), notice: "Radiowave was successfully created." }
        format.json { render :show, status: :created, location: @radiowafe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @radiowafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /radiowaves/1 or /radiowaves/1.json
  def update
    respond_to do |format|
      if @radiowafe.update(radiowafe_params)
        format.html { redirect_to radiowafe_url(@radiowafe), notice: "Radiowave was successfully updated." }
        format.json { render :show, status: :ok, location: @radiowafe }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @radiowafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /radiowaves/1 or /radiowaves/1.json
  def destroy
    @radiowafe.destroy

    respond_to do |format|
      format.html { redirect_to radiowaves_url, notice: "Radiowave was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_radiowafe
      @radiowafe = Radiowave.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def radiowafe_params
      params.require(:radiowafe).permit(:name)
    end
end
