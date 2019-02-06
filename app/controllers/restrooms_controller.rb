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
    # does restroom exist? Look at ID

    r = Restroom.where("location_id = ? AND name_of_establishment = ?", restroom_params[:location_id], restroom_params[:name_of_establishment])
    if r.exists?
     # condition 1: restroom exists
     # just make a review on the existing restroom

     # next, add cleanliness and smell to review
       @review = current_user.reviews.build(restroom_id: r.first.id, smell: restroom_params[:smell], cleanliness: restroom_params[:cleanliness])
          if @review.save
            render json: @review, status: :created, location: @review
          else
            render json: @review.errors, status: :unprocessable_entity
          end
    
    else
     # condition 2: restroom does NOT exist

     # current_user.restrooms.build(restroom_params)

      @restroom = current_user.restrooms.build(restroom_params)
    
     # needs location_id and user_id to create restroom
      @restroom.user_id = current_user.id
    # check if valid? in debugger

      if @restroom.save
        render json: @restroom, status: :created, location: @restroom
        # render json: @review, status: :created, location: @review
      else
        render json: @restroom.errors, status: :unprocessable_entity
        # render json: @review.errors, status: :unprocessable_entity
      end
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
