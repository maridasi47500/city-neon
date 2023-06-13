class TvchannelsController < ApplicationController
  before_action :set_tvchannel, only: %i[ show edit update destroy ]

  # GET /tvchannels or /tvchannels.json
  def index
    @tvchannels = Tvchannel.all
  end

  # GET /tvchannels/1 or /tvchannels/1.json
  def show
    @video=Video.new(mychannel:@tvchannel.id,user_id:current_user.id)
  end

  # GET /tvchannels/new
  def new
    @tvchannel = Tvchannel.new
  end

  # GET /tvchannels/1/edit
  def edit
  end

  # POST /tvchannels or /tvchannels.json
  def create
    @tvchannel = Tvchannel.new(tvchannel_params)

    respond_to do |format|
      if @tvchannel.save
        format.html { redirect_to tvchannel_url(@tvchannel), notice: "Tvchannel was successfully created." }
        format.json { render :show, status: :created, location: @tvchannel }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tvchannel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tvchannels/1 or /tvchannels/1.json
  def update
    respond_to do |format|
      if @tvchannel.update(tvchannel_params)
        format.html { redirect_to tvchannel_url(@tvchannel), notice: "Tvchannel was successfully updated." }
        format.json { render :show, status: :ok, location: @tvchannel }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tvchannel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tvchannels/1 or /tvchannels/1.json
  def destroy
    @tvchannel.destroy

    respond_to do |format|
      format.html { redirect_to tvchannels_url, notice: "Tvchannel was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tvchannel
      @tvchannel = Tvchannel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tvchannel_params
      params.require(:tvchannel).permit(:name)
    end
end
