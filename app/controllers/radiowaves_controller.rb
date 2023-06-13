class RadiowavesController < ApplicationController
  before_action :set_radiowave, only: %i[ show edit update destroy ]

  # GET /radiowaves or /radiowaves.json
  def index
    @radiowaves = Radiowave.all
  end

  # GET /radiowaves/1 or /radiowaves/1.json
  def show
    @music=Music.new(myradio:@radiowave.id,user_id:current_user.id)
  end

  # GET /radiowaves/new
  def new
    @radiowave = Radiowave.new
  end

  # GET /radiowaves/1/edit
  def edit
  end

  # POST /radiowaves or /radiowaves.json
  def create
    @radiowave = Radiowave.new(radiowave_params)

    respond_to do |format|
      if @radiowave.save
        format.html { redirect_to radiowave_url(@radiowave), notice: "Radiowave was successfully created." }
        format.json { render :show, status: :created, location: @radiowave }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @radiowave.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /radiowaves/1 or /radiowaves/1.json
  def update
    respond_to do |format|
      if @radiowave.update(radiowave_params)
        format.html { redirect_to radiowave_url(@radiowave), notice: "Radiowave was successfully updated." }
        format.json { render :show, status: :ok, location: @radiowave }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @radiowave.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /radiowaves/1 or /radiowaves/1.json
  def destroy
    @radiowave.destroy

    respond_to do |format|
      format.html { redirect_to radiowaves_url, notice: "Radiowave was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_radiowave
      @radiowave = Radiowave.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def radiowave_params
      params.require(:radiowave).permit(:name)
    end
end
