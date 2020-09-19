class GymsController < ApplicationController
  def index
    @gyms = Gym.all
  end

  def show
    @gym = Gym.find(params[:id])
    @machines = @gym.machines
    @gym_comment = GymComment.new
    @gym_comments = @gym.gym_comments
  end

  def map
  #   results = Geocoder.search(params[:address])
  #   @latlng = results.first.coordinates
  #   respond_to do |format|
  #     format.js
  # end
  end

  private
  def gym_params
    params.require(:gym).permit(:name,:address)
  end
end
