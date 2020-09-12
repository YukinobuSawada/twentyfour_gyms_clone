class GymsController < ApplicationController
  def index
    @gyms = Gym.all
  end

  def new
  end

  def create
  end

  def show
    @gym = Gym.find(params[:id])
  end

  def edit
  end

  def update
  end

  private
  def gym_params
    params.require(:gym).permit(:name,:address)
end
end
