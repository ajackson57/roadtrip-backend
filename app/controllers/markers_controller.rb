class MarkersController < ProtectedController
  before_action :set_marker, only: [:show, :update, :destroy]

  # GET /markers
  def index
    @markers = current_user.markers

    render json: @markers
  end

  # GET /markers/1
  def show
    render json: @marker
  end

  # POST /markers
  def create
    @marker = current_user.markers.build(marker_params)

    if @marker.save
      render json: @marker, status: :created, location: @marker
    else
      render json: @marker.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /markers/1
  def update
    if @marker.update(marker_params)
      render json: @marker
    else
      render json: @marker.errors, status: :unprocessable_entity
    end
  end

  # DELETE /markers/1
  def destroy
    @marker.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marker
      @marker = current_user.markers.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def marker_params
      params.require(:marker).permit(:name, :description, :lng, :lat, :image_url, :poi_url, :trip_id)
    end
end
