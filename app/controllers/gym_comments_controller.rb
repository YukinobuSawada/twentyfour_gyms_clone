class GymCommentsController < ApplicationController
  before_action :authenticate_user!
  def create
    gym = Gym.find(params[:gym_id])
    gym_comments = gym.gym_comments
    comment = current_user.gym_comments.new(gym_comment_params)
    comment.gym_id = gym.id
    if comment.save
      flash[:notice] = "コメントを投稿しました"
      redirect_back(fallback_location: root_path)
    else
      flash[:alert] = "空欄のままでは投稿できません"
      redirect_back(fallback_location: root_path)
     end
    end

  def destroy
    GymComment.find_by(id: params[:id], gym_id: params[:gym_id]).destroy
    redirect_back(fallback_location: root_path)
  end

  private

  def gym_comment_params
    params.require(:gym_comment).permit(:comment)
    end
end
