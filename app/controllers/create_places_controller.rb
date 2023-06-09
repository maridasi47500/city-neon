class CreatePlacesController < ApplicationController
  before_action :set_create_place, only: %i[ show edit update destroy ]

  # GET /create_places or /create_places.json
  def index
    @create_places = CreatePlace.all
  end

  # GET /create_places/1 or /create_places/1.json
  def show
  end

  # GET /create_places/new
  def new
    @create_place = CreatePlace.new
  end

  # GET /create_places/1/edit
  def edit
  end

  # POST /create_places or /create_places.json
  def create
    @create_place = CreatePlace.new(create_place_params)

    respond_to do |format|
      if @create_place.save
        format.html { redirect_to create_place_url(@create_place), notice: "Create place was successfully created." }
        format.json { render :show, status: :created, location: @create_place }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @create_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /create_places/1 or /create_places/1.json
  def update
    respond_to do |format|
      if @create_place.update(create_place_params)
        format.html { redirect_to create_place_url(@create_place), notice: "Create place was successfully updated." }
        format.json { render :show, status: :ok, location: @create_place }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @create_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /create_places/1 or /create_places/1.json
  def destroy
    @create_place.destroy

    respond_to do |format|
      format.html { redirect_to create_places_url, notice: "Create place was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_create_place
      @create_place = CreatePlace.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def create_place_params
      params.require(:create_place).permit(:user_id, :name, :lat, :lon)
    end
end
