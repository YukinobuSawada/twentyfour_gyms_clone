class ApplicationController < ActionController::Base
before_action :set_search
def set_search
	@search = Gym.ransack(params[:q])
	@search_gyms = @search.result
end
end
