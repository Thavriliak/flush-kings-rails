class RestroomsController < ProtectedController
  before_action :set_restroom, only: [:show, :update, :destroy]

  # GET /restrooms
  def index
    @restrooms = Restroom.all

    render json: @restrooms
  end

  # GET /restrooms/1
  def show
    render json: @restroom
  end

  # POST /restrooms
  def create
    binding.pry
    # does restroom exist? Look at ID
    
    # condition 1: restroom doesn't exist
    @restroom = current_user.restrooms.build(restroom_params)
    # needs location_id and user_id to create restroom

    # condition 2: restroom does exist
    # just make a review on the existing restroom

    # next, add cleanliness and smell to review

    if @restroom.save
      render json: @restroom, status: :created, location: @restroom
    else
      render json: @restroom.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /restrooms/1
  def update
    if @restroom.update(restroom_params)
      render json: @restroom
    else
      render json: @restroom.errors, status: :unprocessable_entity
    end
  end

  # DELETE /restrooms/1
  def destroy
    @restroom.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restroom
      @restroom = current_user.restrooms.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def restroom_params
      params.require(:restroom).permit(:location_id, :name_of_establishment, :cleanliness, :smell, :number_of_toilets, :handicap_accessible, :baby_care, :hours, :user_id)
    end
end
