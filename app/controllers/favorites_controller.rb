class FavoritesController < ApplicationController
  def create
    @gym = Gym.find(params[:gym_id])
    @gym_comment = GymComment.find(params[:gym_comment_id])
    @favorite = current_user.favorites.new(gym_comment_id: params[:gym_comment_id])
    @favorite.save
    # redirect_back(fallback_location: root_path)
  end

  def destroy
    @gym = Gym.find(params[:gym_id])
    @gym_comment = GymComment.find(params[:gym_comment_id])
    @favorite = current_user.favorites.find_by(gym_comment_id: params[:gym_comment_id])
    @favorite.destroy
    # redirect_back(fallback_location: root_path)
  end

  private

  def gym_comment_params
    params.require(:gym_comment).permit(:comment, :user_id, :gym_id)
end
end
